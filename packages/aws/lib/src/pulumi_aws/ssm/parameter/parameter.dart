import 'package:pulumi/pulumi.dart';
import 'parameter_args.dart';

/// Provides an SSM Parameter resource.
///
/// > **Note:** The <span pulumi-lang-nodejs="`overwrite`" pulumi-lang-dotnet="`Overwrite`" pulumi-lang-go="`overwrite`" pulumi-lang-python="`overwrite`" pulumi-lang-yaml="`overwrite`" pulumi-lang-java="`overwrite`">`overwrite`</span> argument makes it possible to overwrite an existing SSM Parameter created outside of IAC.
///
///
/// ## Example Usage
///
/// ### Basic example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ssm.Parameter("foo", {
/// name: "foo",
/// type: aws.ssm.ParameterType.String,
/// value: "bar",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ssm.Parameter("foo",
/// name="foo",
/// type=aws.ssm.ParameterType.STRING,
/// value="bar")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = new Aws.Ssm.Parameter("foo", new()
/// {
/// Name = "foo",
/// Type = Aws.Ssm.ParameterType.String,
/// Value = "bar",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssm.NewParameter(ctx, "foo", &ssm.ParameterArgs{
/// Name:  pulumi.String("foo"),
/// Type:  pulumi.String(ssm.ParameterTypeString),
/// Value: pulumi.String("bar"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.Parameter;
/// import com.pulumi.aws.ssm.ParameterArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var foo = new Parameter("foo", ParameterArgs.builder()
/// .name("foo")
/// .type("String")
/// .value("bar")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:ssm:Parameter
/// properties:
/// name: foo
/// type: String
/// value: bar
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Encrypted string using default SSM KMS key
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.rds.Instance("default", {
/// allocatedStorage: 10,
/// storageType: aws.rds.StorageType.GP2,
/// engine: "mysql",
/// engineVersion: "5.7.16",
/// instanceClass: aws.rds.InstanceType.T2_Micro,
/// dbName: "mydb",
/// username: "foo",
/// password: databaseMasterPassword,
/// dbSubnetGroupName: "my_database_subnet_group",
/// parameterGroupName: "default.mysql5.7",
/// });
/// const secret = new aws.ssm.Parameter("secret", {
/// name: "/production/database/password/master",
/// description: "The parameter description",
/// type: aws.ssm.ParameterType.SecureString,
/// value: databaseMasterPassword,
/// tags: {
/// environment: "production",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.rds.Instance("default",
/// allocated_storage=10,
/// storage_type=aws.rds.StorageType.GP2,
/// engine="mysql",
/// engine_version="5.7.16",
/// instance_class=aws.rds.InstanceType.T2_MICRO,
/// db_name="mydb",
/// username="foo",
/// password=database_master_password,
/// db_subnet_group_name="my_database_subnet_group",
/// parameter_group_name="default.mysql5.7")
/// secret = aws.ssm.Parameter("secret",
/// name="/production/database/password/master",
/// description="The parameter description",
/// type=aws.ssm.ParameterType.SECURE_STRING,
/// value=database_master_password,
/// tags={
/// "environment": "production",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Rds.Instance("default", new()
/// {
/// AllocatedStorage = 10,
/// StorageType = Aws.Rds.StorageType.GP2,
/// Engine = "mysql",
/// EngineVersion = "5.7.16",
/// InstanceClass = Aws.Rds.InstanceType.T2_Micro,
/// DbName = "mydb",
/// Username = "foo",
/// Password = databaseMasterPassword,
/// DbSubnetGroupName = "my_database_subnet_group",
/// ParameterGroupName = "default.mysql5.7",
/// });
///
/// var secret = new Aws.Ssm.Parameter("secret", new()
/// {
/// Name = "/production/database/password/master",
/// Description = "The parameter description",
/// Type = Aws.Ssm.ParameterType.SecureString,
/// Value = databaseMasterPassword,
/// Tags =
/// {
/// { "environment", "production" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := rds.NewInstance(ctx, "default", &rds.InstanceArgs{
/// AllocatedStorage:   pulumi.Int(10),
/// StorageType:        pulumi.String(rds.StorageTypeGP2),
/// Engine:             pulumi.String("mysql"),
/// EngineVersion:      pulumi.String("5.7.16"),
/// InstanceClass:      pulumi.String(rds.InstanceType_T2_Micro),
/// DbName:             pulumi.String("mydb"),
/// Username:           pulumi.String("foo"),
/// Password:           pulumi.Any(databaseMasterPassword),
/// DbSubnetGroupName:  pulumi.String("my_database_subnet_group"),
/// ParameterGroupName: pulumi.String("default.mysql5.7"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ssm.NewParameter(ctx, "secret", &ssm.ParameterArgs{
/// Name:        pulumi.String("/production/database/password/master"),
/// Description: pulumi.String("The parameter description"),
/// Type:        pulumi.String(ssm.ParameterTypeSecureString),
/// Value:       pulumi.Any(databaseMasterPassword),
/// Tags: pulumi.StringMap{
/// "environment": pulumi.String("production"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import com.pulumi.aws.ssm.Parameter;
/// import com.pulumi.aws.ssm.ParameterArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new Instance("default", InstanceArgs.builder()
/// .allocatedStorage(10)
/// .storageType("gp2")
/// .engine("mysql")
/// .engineVersion("5.7.16")
/// .instanceClass("db.t2.micro")
/// .dbName("mydb")
/// .username("foo")
/// .password(databaseMasterPassword)
/// .dbSubnetGroupName("my_database_subnet_group")
/// .parameterGroupName("default.mysql5.7")
/// .build());
///
/// var secret = new Parameter("secret", ParameterArgs.builder()
/// .name("/production/database/password/master")
/// .description("The parameter description")
/// .type("SecureString")
/// .value(databaseMasterPassword)
/// .tags(Map.of("environment", "production"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:rds:Instance
/// properties:
/// allocatedStorage: 10
/// storageType: gp2
/// engine: mysql
/// engineVersion: 5.7.16
/// instanceClass: db.t2.micro
/// dbName: mydb
/// username: foo
/// password: ${databaseMasterPassword}
/// dbSubnetGroupName: my_database_subnet_group
/// parameterGroupName: default.mysql5.7
/// secret:
/// type: aws:ssm:Parameter
/// properties:
/// name: /production/database/password/master
/// description: The parameter description
/// type: SecureString
/// value: ${databaseMasterPassword}
/// tags:
/// environment: production
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> - (String) Name of the parameter.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSM Parameters using the parameter store <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/parameter:Parameter example /my_path/my_paramname
/// ```
class Parameter extends CustomResource {
  /// Regular expression used to validate the parameter value.
  late final Output<String?> allowedPattern;

  /// ARN of the parameter.
  late final Output<String> arn;

  /// Data type of the parameter. Valid values: <span pulumi-lang-nodejs="`text`" pulumi-lang-dotnet="`Text`" pulumi-lang-go="`text`" pulumi-lang-python="`text`" pulumi-lang-yaml="`text`" pulumi-lang-java="`text`">`text`</span>, `aws:ssm:integration` and `aws:ec2:image` for AMI format, see the [Native parameter support for Amazon Machine Image IDs](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html).
  late final Output<String> dataType;

  /// Description of the parameter.
  late final Output<String?> description;

  /// Indicates whether the resource has a <span pulumi-lang-nodejs="`valueWo`" pulumi-lang-dotnet="`ValueWo`" pulumi-lang-go="`valueWo`" pulumi-lang-python="`value_wo`" pulumi-lang-yaml="`valueWo`" pulumi-lang-java="`valueWo`">`value_wo`</span> set.
  late final Output<bool> hasValueWo;

  /// Value of the parameter. **Use caution:** This value is _never_ marked as sensitive in the pulumi preview output. This argument is not valid with a <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span> of `SecureString`.
  late final Output<String> insecureValue;

  /// KMS key ID or ARN for encrypting a SecureString.
  late final Output<String> keyId;

  /// Name of the parameter. If the name contains a path (e.g., any forward slashes (`/`)), it must be fully qualified with a leading forward slash (`/`). For additional requirements and constraints, see the [AWS SSM User Guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-parameter-name-constraints.html).
  late final Output<String> name;

  /// Overwrite an existing parameter. If not specified, defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> during create operations to avoid overwriting existing resources and then <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> for all subsequent operations once the resource is managed by IAC. Lifecycle rules should be used to manage non-standard update behavior.
  late final Output<bool?> overwrite;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the object. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Parameter tier to assign to the parameter. If not specified, will use the default parameter tier for the region. Valid tiers are `Standard`, `Advanced`, and `Intelligent-Tiering`. Downgrading an `Advanced` tier parameter to `Standard` will recreate the resource. For more information on parameter tiers, see the [AWS SSM Parameter tier comparison and guide](https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html).
  late final Output<String> tier;

  /// Type of the parameter. Valid types are `String`, `StringList` and `SecureString`.
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  /// Value of the parameter. This value is always marked as sensitive in the pulumi preview output, regardless of `type
  late final Output<String> value;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Value of the parameter. This value is always marked as sensitive in the pulumi preview output, regardless of <span pulumi-lang-nodejs="`type`" pulumi-lang-dotnet="`Type`" pulumi-lang-go="`type`" pulumi-lang-python="`type`" pulumi-lang-yaml="`type`" pulumi-lang-java="`type`">`type`</span>. Additionally, `write-only` values are never stored to state. <span pulumi-lang-nodejs="`valueWoVersion`" pulumi-lang-dotnet="`ValueWoVersion`" pulumi-lang-go="`valueWoVersion`" pulumi-lang-python="`value_wo_version`" pulumi-lang-yaml="`valueWoVersion`" pulumi-lang-java="`valueWoVersion`">`value_wo_version`</span> can be used to trigger an update and is required with this argument.
  late final Output<String?> valueWo;

  /// Used together with <span pulumi-lang-nodejs="`valueWo`" pulumi-lang-dotnet="`ValueWo`" pulumi-lang-go="`valueWo`" pulumi-lang-python="`value_wo`" pulumi-lang-yaml="`valueWo`" pulumi-lang-java="`valueWo`">`value_wo`</span> to trigger an update. Increment this value when an update to the <span pulumi-lang-nodejs="`valueWo`" pulumi-lang-dotnet="`ValueWo`" pulumi-lang-go="`valueWo`" pulumi-lang-python="`value_wo`" pulumi-lang-yaml="`valueWo`" pulumi-lang-java="`valueWo`">`value_wo`</span> is required.
  ///
  /// > **NOTE:** `aws:ssm:integration`<span pulumi-lang-nodejs=" dataType " pulumi-lang-dotnet=" DataType " pulumi-lang-go=" dataType " pulumi-lang-python=" data_type " pulumi-lang-yaml=" dataType " pulumi-lang-java=" dataType "> data_type </span>parameters must be of the type `SecureString` and the name must start with the prefix `/d9d01087-4a3f-49e0-b0b4-d568d7826553/ssm/integrations/webhook/`. See [here](https://docs.aws.amazon.com/systems-manager/latest/userguide/creating-integrations.html) for information on the usage of `aws:ssm:integration` parameters.
  late final Output<int?> valueWoVersion;

  /// Version of the parameter.
  late final Output<int> version;

  Parameter(
    String name, {
    ParameterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/parameter:Parameter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowedPattern = Output.createUnknown<String?>();
    this.arn = Output.createUnknown<String>();
    this.dataType = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.hasValueWo = Output.createUnknown<bool>();
    this.insecureValue = Output.createUnknown<String>();
    this.keyId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.overwrite = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.tier = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.value = Output.createUnknown<String>();
    this.valueWo = Output.createUnknown<String?>();
    this.valueWoVersion = Output.createUnknown<int?>();
    this.version = Output.createUnknown<int>();
  }
}
