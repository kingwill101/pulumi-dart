import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_config_args.dart';

/// Initializes a Project-level default Backupdr config. It creates default Backupvault and default Backup Plan in same project for customers to protect instances.
///
///
/// To get more information about ServiceConfig, see:
///
/// * [API documentation](https://cloud.google.com/backup-disaster-recovery/docs/reference/rest/v1/projects.locations.serviceConfig)
///
/// ## Example Usage
///
/// ### Backup Dr Service Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bpa1 = new gcp.backupdisasterrecovery.ServiceConfig("bpa1", {
///     location: "us-central1",
///     resourceType: "compute.googleapis.com/Instance",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bpa1 = gcp.backupdisasterrecovery.ServiceConfig("bpa1",
///     location="us-central1",
///     resource_type="compute.googleapis.com/Instance")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bpa1 = new Gcp.BackupDisasterRecovery.ServiceConfig("bpa1", new()
///     {
///         Location = "us-central1",
///         ResourceType = "compute.googleapis.com/Instance",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backupdisasterrecovery.NewServiceConfig(ctx, "bpa1", &backupdisasterrecovery.ServiceConfigArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			ResourceType: pulumi.String("compute.googleapis.com/Instance"),
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
/// import com.pulumi.gcp.backupdisasterrecovery.ServiceConfig;
/// import com.pulumi.gcp.backupdisasterrecovery.ServiceConfigArgs;
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
///         var bpa1 = new ServiceConfig("bpa1", ServiceConfigArgs.builder()
///             .location("us-central1")
///             .resourceType("compute.googleapis.com/Instance")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bpa1:
///     type: gcp:backupdisasterrecovery:ServiceConfig
///     properties:
///       location: us-central1
///       resourceType: compute.googleapis.com/Instance
/// ```
///
///
/// ## Import
///
/// This resource does not support import.
class ServiceConfig extends pulumi.CustomResource {
  /// The location in which the Service config is to be initialized.
  late final pulumi.Output<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The resource type to which the default service config will be applied.
  late final pulumi.Output<String> resourceType;

  /// Creates a new [ServiceConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceConfig]. {@macro pulumi_backupdisasterrecovery_service_config_service_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceConfig(
    String name, {
    ServiceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/serviceConfig:ServiceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.project = registerOutput<String>('project');
    this.resourceType = registerOutput<String>('resourceType');
  }
}
