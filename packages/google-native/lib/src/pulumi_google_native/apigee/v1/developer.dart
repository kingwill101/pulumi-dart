import 'package:pulumi/pulumi.dart';
import 'developer_args.dart';
import 'google_cloud_apigee_v1_attribute_response.dart';

/// Creates a developer. Once created, the developer can register an app and obtain an API key. At creation time, a developer is set as `active`. To change the developer status, use the SetDeveloperStatus API.
/// Auto-naming is currently not supported for this resource.
class Developer extends CustomResource {
  /// Access type.
  late final Output<String> accessType;

  /// Developer app family.
  late final Output<String> appFamily;

  /// List of apps associated with the developer.
  late final Output<List<String>> apps;

  /// Optional. Developer attributes (name/value pairs). The custom attribute limit is 18.
  late final Output<List<GoogleCloudApigeeV1AttributeResponse>> attributes;

  /// List of companies associated with the developer.
  late final Output<List<String>> companies;

  /// Time at which the developer was created in milliseconds since epoch.
  late final Output<String> createdAt;

  /// ID of the developer. **Note**: IDs are generated internally by Apigee and are not guaranteed to stay the same over time.
  late final Output<String> developerId;

  /// Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only.
  late final Output<String> email;

  /// First name of the developer.
  late final Output<String> firstName;

  /// Time at which the developer was last modified in milliseconds since epoch.
  late final Output<String> lastModifiedAt;

  /// Last name of the developer.
  late final Output<String> lastName;
  late final Output<String> organizationId;

  /// Name of the Apigee organization in which the developer resides.
  late final Output<String> organizationName;

  /// Status of the developer. Valid values are `active` and `inactive`.
  late final Output<String> status;

  /// User name of the developer. Not used by Apigee hybrid.
  late final Output<String> userName;

  Developer(
    String name, {
    DeveloperArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Developer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessType = registerOutput<String>('accessType');
    this.appFamily = registerOutput<String>('appFamily');
    this.apps = registerOutput<List<String>>('apps');
    this.attributes =
        registerOutput<List<GoogleCloudApigeeV1AttributeResponse>>(
            'attributes');
    this.companies = registerOutput<List<String>>('companies');
    this.createdAt = registerOutput<String>('createdAt');
    this.developerId = registerOutput<String>('developerId');
    this.email = registerOutput<String>('email');
    this.firstName = registerOutput<String>('firstName');
    this.lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.lastName = registerOutput<String>('lastName');
    this.organizationId = registerOutput<String>('organizationId');
    this.organizationName = registerOutput<String>('organizationName');
    this.status = registerOutput<String>('status');
    this.userName = registerOutput<String>('userName');
  }
}
