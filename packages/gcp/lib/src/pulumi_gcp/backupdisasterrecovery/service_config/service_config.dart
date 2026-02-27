import 'package:pulumi/pulumi.dart';
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
///
/// ## Import
///
/// This resource does not support import.
class ServiceConfig extends CustomResource {
  /// The location in which the Service config is to be initialized.
  late final Output<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The resource type to which the default service config will be applied.
  late final Output<String> resourceType;

  ServiceConfig(
    String name, {
    ServiceConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/serviceConfig:ServiceConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.project = registerOutput<String>('project');
    this.resourceType = registerOutput<String>('resourceType');
  }
}
