import 'package:pulumi/pulumi.dart';
import '../developer_attribute/developer_attribute.dart';
import 'developer_args.dart';

/// A `Developer` is an API consumer that can have apps registered in Apigee.
///
///
/// To get more information about Developer, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.developers)
/// * How-to Guides
/// * [Creating a developer](https://cloud.google.com/apigee/docs/api-platform/publish/adding-developers-your-api-product)
///
/// ## Example Usage
///
/// ### Apigee Developer Basic
///
///
///
/// ### Apigee Developer With Attributes
///
///
///
///
/// ## Import
///
/// Developer can be imported using any of these accepted formats:
///
/// * `{{org_id}}/developers/{{email}}`
///
/// * `{{org_id}}/{{email}}`
///
/// When using the `pulumi import` command, Developer can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/developer:Developer default {{org_id}}/developers/{{email}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/developer:Developer default {{org_id}}/{{email}}
/// ```
class Developer extends CustomResource {
  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  late final Output<List<DeveloperAttribute>?> attributes;

  /// Time at which the developer was created in milliseconds since epoch.
  late final Output<String> createdAt;

  /// Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only..
  late final Output<String> email;

  /// First name of the developer.
  late final Output<String> firstName;

  /// Time at which the developer was last modified in milliseconds since epoch.
  late final Output<String> lastModifiedAt;

  /// Last name of the developer.
  late final Output<String> lastName;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  late final Output<String> orgId;

  /// Name of the Apigee organization in which the developer resides.
  late final Output<String> organizatioName;

  /// Status of the developer. Valid values are active and inactive.
  late final Output<String> status;

  /// User name of the developer. Not used by Apigee hybrid.
  late final Output<String> userName;

  Developer(
    String name, {
    DeveloperArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/developer:Developer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.attributes = registerOutput<List<DeveloperAttribute>?>('attributes');
    this.createdAt = registerOutput<String>('createdAt');
    this.email = registerOutput<String>('email');
    this.firstName = registerOutput<String>('firstName');
    this.lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.lastName = registerOutput<String>('lastName');
    this.orgId = registerOutput<String>('orgId');
    this.organizatioName = registerOutput<String>('organizatioName');
    this.status = registerOutput<String>('status');
    this.userName = registerOutput<String>('userName');
  }
}
