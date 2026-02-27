import 'package:pulumi/pulumi.dart' as pulumi;
import '../management_server_management_uri/management_server_management_uri.dart';
import '../management_server_network/management_server_network.dart';
import 'management_server_args.dart';

/// A Backup and DR Management Server (Also referred as Management Console)
///
///
/// To get more information about ManagementServer, see:
///
/// * [API documentation](https://cloud.google.com/backup-disaster-recovery/docs/deployment/deployment-plan)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/backup-disaster-recovery/docs)
///
/// ## Example Usage
///
/// ### Backup Dr Management Server
///
///
///
///
/// ## Import
///
/// ManagementServer can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/managementServers/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, ManagementServer can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/managementServer:ManagementServer default projects/{{project}}/locations/{{location}}/managementServers/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/managementServer:ManagementServer default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/managementServer:ManagementServer default {{location}}/{{name}}
/// ```
class ManagementServer extends pulumi.CustomResource {
  /// The location for the management server (management console)
  late final pulumi.Output<String> location;

  /// The management console URI
  /// Structure is documented below.
  late final pulumi.Output<List<ManagementServerManagementUri>> managementUris;

  /// The name of management server (management console)
  late final pulumi.Output<String> name;

  /// Network details to create management server (management console).
  /// Structure is documented below.
  late final pulumi.Output<List<ManagementServerNetwork>?> networks;

  /// The oauth2ClientId of management console.
  late final pulumi.Output<String> oauth2ClientId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The type of management server (management console).
  /// Default value is `BACKUP_RESTORE`.
  /// Possible values are: `BACKUP_RESTORE`.
  late final pulumi.Output<String?> type;

  ManagementServer(
    String name, {
    ManagementServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/managementServer:ManagementServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.location = registerOutput<String>('location');
    this.managementUris =
        registerOutput<List<ManagementServerManagementUri>>('managementUris');
    this.name = registerOutput<String>('name');
    this.networks = registerOutput<List<ManagementServerNetwork>?>('networks');
    this.oauth2ClientId = registerOutput<String>('oauth2ClientId');
    this.project = registerOutput<String>('project');
    this.type = registerOutput<String?>('type');
  }
}
