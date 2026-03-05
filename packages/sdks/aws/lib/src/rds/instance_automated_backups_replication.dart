import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_automated_backups_replication_args.dart';
import 'instance_automated_backups_replication_state.dart';

/// Manage cross-region replication of automated backups to a different AWS Region. Documentation for cross-region automated backup replication can be found at:
///
/// * [Replicating automated backups to another AWS Region](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReplicateBackups.html)
///
/// &gt; **Note:** This resource has to be created in the destination region.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.InstanceAutomatedBackupsReplication("default", {
///     sourceDbInstanceArn: "arn:aws:rds:us-west-2:123456789012:db:mydatabase",
///     retentionPeriod: 14,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.InstanceAutomatedBackupsReplication("default",
///     source_db_instance_arn="arn:aws:rds:us-west-2:123456789012:db:mydatabase",
///     retention_period=14)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Rds.InstanceAutomatedBackupsReplication("default", new()
///     {
///         SourceDbInstanceArn = "arn:aws:rds:us-west-2:123456789012:db:mydatabase",
///         RetentionPeriod = 14,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewInstanceAutomatedBackupsReplication(ctx, "default", &rds.InstanceAutomatedBackupsReplicationArgs{
/// 			SourceDbInstanceArn: pulumi.String("arn:aws:rds:us-west-2:123456789012:db:mydatabase"),
/// 			RetentionPeriod:     pulumi.Int(14),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.InstanceAutomatedBackupsReplication;
/// import com.pulumi.aws.rds.InstanceAutomatedBackupsReplicationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var default_ = new InstanceAutomatedBackupsReplication("default", InstanceAutomatedBackupsReplicationArgs.builder()
///             .sourceDbInstanceArn("arn:aws:rds:us-west-2:123456789012:db:mydatabase")
///             .retentionPeriod(14)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:rds:InstanceAutomatedBackupsReplication
///     properties:
///       sourceDbInstanceArn: arn:aws:rds:us-west-2:123456789012:db:mydatabase
///       retentionPeriod: 14
/// ```
///
///
/// ## Encrypting the automated backup with KMS
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.InstanceAutomatedBackupsReplication("default", {
///     sourceDbInstanceArn: "arn:aws:rds:us-west-2:123456789012:db:mydatabase",
///     kmsKeyId: "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.InstanceAutomatedBackupsReplication("default",
///     source_db_instance_arn="arn:aws:rds:us-west-2:123456789012:db:mydatabase",
///     kms_key_id="arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Rds.InstanceAutomatedBackupsReplication("default", new()
///     {
///         SourceDbInstanceArn = "arn:aws:rds:us-west-2:123456789012:db:mydatabase",
///         KmsKeyId = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewInstanceAutomatedBackupsReplication(ctx, "default", &rds.InstanceAutomatedBackupsReplicationArgs{
/// 			SourceDbInstanceArn: pulumi.String("arn:aws:rds:us-west-2:123456789012:db:mydatabase"),
/// 			KmsKeyId:            pulumi.String("arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.InstanceAutomatedBackupsReplication;
/// import com.pulumi.aws.rds.InstanceAutomatedBackupsReplicationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var default_ = new InstanceAutomatedBackupsReplication("default", InstanceAutomatedBackupsReplicationArgs.builder()
///             .sourceDbInstanceArn("arn:aws:rds:us-west-2:123456789012:db:mydatabase")
///             .kmsKeyId("arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:rds:InstanceAutomatedBackupsReplication
///     properties:
///       sourceDbInstanceArn: arn:aws:rds:us-west-2:123456789012:db:mydatabase
///       kmsKeyId: arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012
/// ```
///
///
/// ## Example including a RDS DB instance
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.Instance("default", {
///     allocatedStorage: 10,
///     identifier: "mydb",
///     engine: "postgres",
///     engineVersion: "13.4",
///     instanceClass: aws.rds.InstanceType.T3_Micro,
///     dbName: "mydb",
///     username: "masterusername",
///     password: "mustbeeightcharacters",
///     backupRetentionPeriod: 7,
///     storageEncrypted: true,
///     skipFinalSnapshot: true,
/// });
/// const defaultKey = new aws.kms.Key("default", {description: "Encryption key for automated backups"});
/// const defaultInstanceAutomatedBackupsReplication = new aws.rds.InstanceAutomatedBackupsReplication("default", {
///     sourceDbInstanceArn: _default.arn,
///     kmsKeyId: defaultKey.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.Instance("default",
///     allocated_storage=10,
///     identifier="mydb",
///     engine="postgres",
///     engine_version="13.4",
///     instance_class=aws.rds.InstanceType.T3_MICRO,
///     db_name="mydb",
///     username="masterusername",
///     password="mustbeeightcharacters",
///     backup_retention_period=7,
///     storage_encrypted=True,
///     skip_final_snapshot=True)
/// default_key = aws.kms.Key("default", description="Encryption key for automated backups")
/// default_instance_automated_backups_replication = aws.rds.InstanceAutomatedBackupsReplication("default",
///     source_db_instance_arn=default.arn,
///     kms_key_id=default_key.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Rds.Instance("default", new()
///     {
///         AllocatedStorage = 10,
///         Identifier = "mydb",
///         Engine = "postgres",
///         EngineVersion = "13.4",
///         InstanceClass = Aws.Rds.InstanceType.T3_Micro,
///         DbName = "mydb",
///         Username = "masterusername",
///         Password = "mustbeeightcharacters",
///         BackupRetentionPeriod = 7,
///         StorageEncrypted = true,
///         SkipFinalSnapshot = true,
///     });
///
///     var defaultKey = new Aws.Kms.Key("default", new()
///     {
///         Description = "Encryption key for automated backups",
///     });
///
///     var defaultInstanceAutomatedBackupsReplication = new Aws.Rds.InstanceAutomatedBackupsReplication("default", new()
///     {
///         SourceDbInstanceArn = @default.Arn,
///         KmsKeyId = defaultKey.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := rds.NewInstance(ctx, "default", &rds.InstanceArgs{
/// 			AllocatedStorage:      pulumi.Int(10),
/// 			Identifier:            pulumi.String("mydb"),
/// 			Engine:                pulumi.String("postgres"),
/// 			EngineVersion:         pulumi.String("13.4"),
/// 			InstanceClass:         pulumi.String(rds.InstanceType_T3_Micro),
/// 			DbName:                pulumi.String("mydb"),
/// 			Username:              pulumi.String("masterusername"),
/// 			Password:              pulumi.String("mustbeeightcharacters"),
/// 			BackupRetentionPeriod: pulumi.Int(7),
/// 			StorageEncrypted:      pulumi.Bool(true),
/// 			SkipFinalSnapshot:     pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultKey, err := kms.NewKey(ctx, "default", &kms.KeyArgs{
/// 			Description: pulumi.String("Encryption key for automated backups"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewInstanceAutomatedBackupsReplication(ctx, "default", &rds.InstanceAutomatedBackupsReplicationArgs{
/// 			SourceDbInstanceArn: _default.Arn,
/// 			KmsKeyId:            defaultKey.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.rds.Instance;
/// import com.pulumi.aws.rds.InstanceArgs;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.rds.InstanceAutomatedBackupsReplication;
/// import com.pulumi.aws.rds.InstanceAutomatedBackupsReplicationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .allocatedStorage(10)
///             .identifier("mydb")
///             .engine("postgres")
///             .engineVersion("13.4")
///             .instanceClass("db.t3.micro")
///             .dbName("mydb")
///             .username("masterusername")
///             .password("mustbeeightcharacters")
///             .backupRetentionPeriod(7)
///             .storageEncrypted(true)
///             .skipFinalSnapshot(true)
///             .build());
///
///         var defaultKey = new Key("defaultKey", KeyArgs.builder()
///             .description("Encryption key for automated backups")
///             .build());
///
///         var defaultInstanceAutomatedBackupsReplication = new InstanceAutomatedBackupsReplication("defaultInstanceAutomatedBackupsReplication", InstanceAutomatedBackupsReplicationArgs.builder()
///             .sourceDbInstanceArn(default_.arn())
///             .kmsKeyId(defaultKey.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:rds:Instance
///     properties:
///       allocatedStorage: 10
///       identifier: mydb
///       engine: postgres
///       engineVersion: '13.4'
///       instanceClass: db.t3.micro
///       dbName: mydb
///       username: masterusername
///       password: mustbeeightcharacters
///       backupRetentionPeriod: 7
///       storageEncrypted: true
///       skipFinalSnapshot: true
///   defaultKey:
///     type: aws:kms:Key
///     name: default
///     properties:
///       description: Encryption key for automated backups
///   defaultInstanceAutomatedBackupsReplication:
///     type: aws:rds:InstanceAutomatedBackupsReplication
///     name: default
///     properties:
///       sourceDbInstanceArn: ${default.arn}
///       kmsKeyId: ${defaultKey.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import RDS instance automated backups replication using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/instanceAutomatedBackupsReplication:InstanceAutomatedBackupsReplication default arn:aws:rds:us-east-1:123456789012:auto-backup:ab-faaa2mgdj1vmp4xflr7yhsrmtbtob7ltrzzz2my
/// ```
class InstanceAutomatedBackupsReplication extends pulumi.CustomResource {
  /// The AWS KMS key identifier for encryption of the replicated automated backups. The KMS key ID is the Amazon Resource Name (ARN) for the KMS encryption key in the destination AWS Region, for example, `arn:aws:kms:us-east-1:123456789012:key/AKIAIOSFODNN7EXAMPLE`.
  late final pulumi.Output<String> kmsKeyId;
  /// A URL that contains a [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html) signed request for the [`StartDBInstanceAutomatedBackupsReplication`](https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_StartDBInstanceAutomatedBackupsReplication.html) action to be called in the AWS Region of the source DB instance.
  late final pulumi.Output<String?> preSignedUrl;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The retention period for the replicated automated backups, defaults to `7`.
  late final pulumi.Output<int?> retentionPeriod;
  /// The Amazon Resource Name (ARN) of the source DB instance for the replicated automated backups, for example, `arn:aws:rds:us-west-2:123456789012:db:mydatabase`.
  late final pulumi.Output<String> sourceDbInstanceArn;

  /// Creates a new [InstanceAutomatedBackupsReplication].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceAutomatedBackupsReplication]. {@macro pulumi_rds_instance_automated_backups_replication_instance_automated_backups_replication_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceAutomatedBackupsReplication(
    String name, {
    InstanceAutomatedBackupsReplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/instanceAutomatedBackupsReplication:InstanceAutomatedBackupsReplication',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    kmsKeyId = registerOutput<String>('kmsKeyId');
    preSignedUrl = registerOutput<String?>('preSignedUrl');
    region = registerOutput<String>('region');
    retentionPeriod = registerOutput<int?>('retentionPeriod');
    sourceDbInstanceArn = registerOutput<String>('sourceDbInstanceArn');
  }

  /// Gets an existing [InstanceAutomatedBackupsReplication] resource's state with the given [name] and [id].
  static InstanceAutomatedBackupsReplication get(
    String name,
    pulumi.Input<String> id, {
    InstanceAutomatedBackupsReplicationState? state,
  }) {
    return InstanceAutomatedBackupsReplication._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceAutomatedBackupsReplication._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/instanceAutomatedBackupsReplication:InstanceAutomatedBackupsReplication',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    kmsKeyId = registerOutput<String>('kmsKeyId');
    preSignedUrl = registerOutput<String?>('preSignedUrl');
    region = registerOutput<String>('region');
    retentionPeriod = registerOutput<int?>('retentionPeriod');
    sourceDbInstanceArn = registerOutput<String>('sourceDbInstanceArn');
  }
}
