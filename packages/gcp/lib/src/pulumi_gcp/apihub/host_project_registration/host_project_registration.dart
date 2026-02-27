import 'package:pulumi/pulumi.dart';
import 'host_project_registration_args.dart';

/// Host project registration refers to the registration of a Google cloud project with API hub as a host project.
/// This is the project where API hub is provisioned.
/// It acts as the consumer project for the API hub instance provisioned.
/// Multiple runtime projects can be attached to the host project and these attachments define the scope of API hub.
///
///
///
/// ## Example Usage
///
/// ### Apihub Host Project Registration Basic
///
///
///
///
/// ## Import
///
/// HostProjectRegistration can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/hostProjectRegistrations/{{host_project_registration_id}}`
///
/// * `{{project}}/{{location}}/{{host_project_registration_id}}`
///
/// * `{{location}}/{{host_project_registration_id}}`
///
/// When using the `pulumi import` command, HostProjectRegistration can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apihub/hostProjectRegistration:HostProjectRegistration default projects/{{project}}/locations/{{location}}/hostProjectRegistrations/{{host_project_registration_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/hostProjectRegistration:HostProjectRegistration default {{project}}/{{location}}/{{host_project_registration_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apihub/hostProjectRegistration:HostProjectRegistration default {{location}}/{{host_project_registration_id}}
/// ```
class HostProjectRegistration extends CustomResource {
  /// Output only. The time at which the host project registration was created.
  late final Output<String> createTime;

  /// Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123".
  /// As input, project name with either project id or number are accepted.
  /// As output, this field will contain project number.
  late final Output<String> gcpProject;

  /// Required. The ID to use for the Host Project Registration, which will become the
  /// final component of the host project registration's resource name. The ID
  /// must be the same as the Google cloud project specified in the
  /// host_project_registration.gcp_project field.
  late final Output<String> hostProjectRegistrationId;

  /// Part of `parent`. See documentation of `projectsId`.
  late final Output<String> location;

  /// Identifier. The name of the host project registration.
  /// Format:
  /// "projects/{project}/locations/{location}/hostProjectRegistrations/{host_project_registration}".
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  HostProjectRegistration(
    String name, {
    HostProjectRegistrationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apihub/hostProjectRegistration:HostProjectRegistration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.gcpProject = registerOutput<String>('gcpProject');
    this.hostProjectRegistrationId =
        registerOutput<String>('hostProjectRegistrationId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
