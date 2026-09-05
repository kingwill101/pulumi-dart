import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_integration_args.dart';
import 'service_integration_kms_server_side_encryption.dart';
import 'service_integration_logs_anomaly_detection.dart';
import 'service_integration_ops_center.dart';
import 'service_integration_state.dart';

/// Resource for managing an AWS DevOps Guru Service Integration.
///
/// &gt; To prevent unintentional deletion of account wide settings, destruction of this resource will only remove it from the Terraform state. To disable any configured settings, explicitly set the opt-in value to `DISABLED` and apply again before destroying.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devopsguru.ServiceIntegration("example", {
///     kmsServerSideEncryption: {
///         optInStatus: "ENABLED",
///         type: "AWS_OWNED_KMS_KEY",
///     },
///     logsAnomalyDetection: {
///         optInStatus: "ENABLED",
///     },
///     opsCenter: {
///         optInStatus: "ENABLED",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.ServiceIntegration("example",
///     kms_server_side_encryption={
///         "opt_in_status": "ENABLED",
///         "type": "AWS_OWNED_KMS_KEY",
///     },
///     logs_anomaly_detection={
///         "opt_in_status": "ENABLED",
///     },
///     ops_center={
///         "opt_in_status": "ENABLED",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DevOpsGuru.ServiceIntegration("example", new()
///     {
///         KmsServerSideEncryption = new Aws.DevOpsGuru.Inputs.ServiceIntegrationKmsServerSideEncryptionArgs
///         {
///             OptInStatus = "ENABLED",
///             Type = "AWS_OWNED_KMS_KEY",
///         },
///         LogsAnomalyDetection = new Aws.DevOpsGuru.Inputs.ServiceIntegrationLogsAnomalyDetectionArgs
///         {
///             OptInStatus = "ENABLED",
///         },
///         OpsCenter = new Aws.DevOpsGuru.Inputs.ServiceIntegrationOpsCenterArgs
///         {
///             OptInStatus = "ENABLED",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsguru"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devopsguru.NewServiceIntegration(ctx, "example", &devopsguru.ServiceIntegrationArgs{
/// 			KmsServerSideEncryption: &devopsguru.ServiceIntegrationKmsServerSideEncryptionArgs{
/// 				OptInStatus: pulumi.String("ENABLED"),
/// 				Type:        pulumi.String("AWS_OWNED_KMS_KEY"),
/// 			},
/// 			LogsAnomalyDetection: &devopsguru.ServiceIntegrationLogsAnomalyDetectionArgs{
/// 				OptInStatus: pulumi.String("ENABLED"),
/// 			},
/// 			OpsCenter: &devopsguru.ServiceIntegrationOpsCenterArgs{
/// 				OptInStatus: pulumi.String("ENABLED"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_devopsguru_serviceintegration" "example" {
///   kms_server_side_encryption = {
///     opt_in_status = "ENABLED"
///     type          = "AWS_OWNED_KMS_KEY"
///   }
///   logs_anomaly_detection = {
///     opt_in_status = "ENABLED"
///   }
///   ops_center = {
///     opt_in_status = "ENABLED"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.devopsguru.ServiceIntegration;
/// import com.pulumi.aws.devopsguru.ServiceIntegrationArgs;
/// import com.pulumi.aws.devopsguru.inputs.ServiceIntegrationKmsServerSideEncryptionArgs;
/// import com.pulumi.aws.devopsguru.inputs.ServiceIntegrationLogsAnomalyDetectionArgs;
/// import com.pulumi.aws.devopsguru.inputs.ServiceIntegrationOpsCenterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new ServiceIntegration("example", ServiceIntegrationArgs.builder()
///             .kmsServerSideEncryption(ServiceIntegrationKmsServerSideEncryptionArgs.builder()
///                 .optInStatus("ENABLED")
///                 .type("AWS_OWNED_KMS_KEY")
///                 .build())
///             .logsAnomalyDetection(ServiceIntegrationLogsAnomalyDetectionArgs.builder()
///                 .optInStatus("ENABLED")
///                 .build())
///             .opsCenter(ServiceIntegrationOpsCenterArgs.builder()
///                 .optInStatus("ENABLED")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:devopsguru:ServiceIntegration
///     properties:
///       kmsServerSideEncryption:
///         optInStatus: ENABLED
///         type: AWS_OWNED_KMS_KEY
///       logsAnomalyDetection:
///         optInStatus: ENABLED
///       opsCenter:
///         optInStatus: ENABLED
/// ```
///
///
/// ### Customer Managed KMS Key
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {});
/// const exampleServiceIntegration = new aws.devopsguru.ServiceIntegration("example", {
///     kmsServerSideEncryption: {
///         kmsKeyId: test.arn,
///         optInStatus: "ENABLED",
///         type: "CUSTOMER_MANAGED_KEY",
///     },
///     logsAnomalyDetection: {
///         optInStatus: "DISABLED",
///     },
///     opsCenter: {
///         optInStatus: "DISABLED",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example")
/// example_service_integration = aws.devopsguru.ServiceIntegration("example",
///     kms_server_side_encryption={
///         "kms_key_id": test["arn"],
///         "opt_in_status": "ENABLED",
///         "type": "CUSTOMER_MANAGED_KEY",
///     },
///     logs_anomaly_detection={
///         "opt_in_status": "DISABLED",
///     },
///     ops_center={
///         "opt_in_status": "DISABLED",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.Key("example");
///
///     var exampleServiceIntegration = new Aws.DevOpsGuru.ServiceIntegration("example", new()
///     {
///         KmsServerSideEncryption = new Aws.DevOpsGuru.Inputs.ServiceIntegrationKmsServerSideEncryptionArgs
///         {
///             KmsKeyId = test.Arn,
///             OptInStatus = "ENABLED",
///             Type = "CUSTOMER_MANAGED_KEY",
///         },
///         LogsAnomalyDetection = new Aws.DevOpsGuru.Inputs.ServiceIntegrationLogsAnomalyDetectionArgs
///         {
///             OptInStatus = "DISABLED",
///         },
///         OpsCenter = new Aws.DevOpsGuru.Inputs.ServiceIntegrationOpsCenterArgs
///         {
///             OptInStatus = "DISABLED",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsguru"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := kms.NewKey(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = devopsguru.NewServiceIntegration(ctx, "example", &devopsguru.ServiceIntegrationArgs{
/// 			KmsServerSideEncryption: &devopsguru.ServiceIntegrationKmsServerSideEncryptionArgs{
/// 				KmsKeyId:    pulumi.Any(test.Arn),
/// 				OptInStatus: pulumi.String("ENABLED"),
/// 				Type:        pulumi.String("CUSTOMER_MANAGED_KEY"),
/// 			},
/// 			LogsAnomalyDetection: &devopsguru.ServiceIntegrationLogsAnomalyDetectionArgs{
/// 				OptInStatus: pulumi.String("DISABLED"),
/// 			},
/// 			OpsCenter: &devopsguru.ServiceIntegrationOpsCenterArgs{
/// 				OptInStatus: pulumi.String("DISABLED"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_kms_key" "example" {
/// }
/// resource "aws_devopsguru_serviceintegration" "example" {
///   kms_server_side_encryption = {
///     kms_key_id    = test.arn
///     opt_in_status = "ENABLED"
///     type          = "CUSTOMER_MANAGED_KEY"
///   }
///   logs_anomaly_detection = {
///     opt_in_status = "DISABLED"
///   }
///   ops_center = {
///     opt_in_status = "DISABLED"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.devopsguru.ServiceIntegration;
/// import com.pulumi.aws.devopsguru.ServiceIntegrationArgs;
/// import com.pulumi.aws.devopsguru.inputs.ServiceIntegrationKmsServerSideEncryptionArgs;
/// import com.pulumi.aws.devopsguru.inputs.ServiceIntegrationLogsAnomalyDetectionArgs;
/// import com.pulumi.aws.devopsguru.inputs.ServiceIntegrationOpsCenterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Key("example");
///
///         var exampleServiceIntegration = new ServiceIntegration("exampleServiceIntegration", ServiceIntegrationArgs.builder()
///             .kmsServerSideEncryption(ServiceIntegrationKmsServerSideEncryptionArgs.builder()
///                 .kmsKeyId(test.arn())
///                 .optInStatus("ENABLED")
///                 .type("CUSTOMER_MANAGED_KEY")
///                 .build())
///             .logsAnomalyDetection(ServiceIntegrationLogsAnomalyDetectionArgs.builder()
///                 .optInStatus("DISABLED")
///                 .build())
///             .opsCenter(ServiceIntegrationOpsCenterArgs.builder()
///                 .optInStatus("DISABLED")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///   exampleServiceIntegration:
///     type: aws:devopsguru:ServiceIntegration
///     name: example
///     properties:
///       kmsServerSideEncryption:
///         kmsKeyId: ${test.arn}
///         optInStatus: ENABLED
///         type: CUSTOMER_MANAGED_KEY
///       logsAnomalyDetection:
///         optInStatus: DISABLED
///       opsCenter:
///         optInStatus: DISABLED
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import DevOps Guru Service Integration using the region. For example:
///
/// ```sh
/// $ pulumi import aws:devopsguru/serviceIntegration:ServiceIntegration example us-east-1
/// ```
class ServiceIntegration extends pulumi.CustomResource {
  /// Information about whether DevOps Guru is configured to encrypt server-side data using KMS. See `kmsServerSideEncryption` below.
  late final pulumi.Output<ServiceIntegrationKmsServerSideEncryption> kmsServerSideEncryption;
  /// Information about whether DevOps Guru is configured to perform log anomaly detection on Amazon CloudWatch log groups. See `logsAnomalyDetection` below.
  late final pulumi.Output<ServiceIntegrationLogsAnomalyDetection> logsAnomalyDetection;
  /// Information about whether DevOps Guru is configured to create an OpsItem in AWS Systems Manager OpsCenter for each created insight. See `opsCenter` below.
  late final pulumi.Output<ServiceIntegrationOpsCenter> opsCenter;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ServiceIntegration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceIntegration]. {@macro pulumi_devopsguru_service_integration_service_integration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceIntegration(
    String name, {
    ServiceIntegrationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devopsguru/serviceIntegration:ServiceIntegration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    kmsServerSideEncryption = registerOutput<ServiceIntegrationKmsServerSideEncryption>('kmsServerSideEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIntegrationKmsServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logsAnomalyDetection = registerOutput<ServiceIntegrationLogsAnomalyDetection>('logsAnomalyDetection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIntegrationLogsAnomalyDetection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    opsCenter = registerOutput<ServiceIntegrationOpsCenter>('opsCenter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIntegrationOpsCenter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ServiceIntegration] resource's state with the given [name] and [id].
  static ServiceIntegration get(
    String name,
    pulumi.Input<String> id, {
    ServiceIntegrationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ServiceIntegration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ServiceIntegration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devopsguru/serviceIntegration:ServiceIntegration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    kmsServerSideEncryption = registerOutput<ServiceIntegrationKmsServerSideEncryption>('kmsServerSideEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIntegrationKmsServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logsAnomalyDetection = registerOutput<ServiceIntegrationLogsAnomalyDetection>('logsAnomalyDetection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIntegrationLogsAnomalyDetection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    opsCenter = registerOutput<ServiceIntegrationOpsCenter>('opsCenter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIntegrationOpsCenter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [ServiceIntegration] resource.
  ServiceIntegration.reference(String urn)
    : super(
        'aws:devopsguru/serviceIntegration:ServiceIntegration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    kmsServerSideEncryption = registerOutput<ServiceIntegrationKmsServerSideEncryption>('kmsServerSideEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIntegrationKmsServerSideEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    logsAnomalyDetection = registerOutput<ServiceIntegrationLogsAnomalyDetection>('logsAnomalyDetection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIntegrationLogsAnomalyDetection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    opsCenter = registerOutput<ServiceIntegrationOpsCenter>('opsCenter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIntegrationOpsCenter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
  }
}
