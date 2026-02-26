import 'package:pulumi/pulumi.dart';
import 'admin_user_response.dart';
import 'contact_center_args.dart';
import 'instance_config_response2.dart';
import 'samlparams_response.dart';
import 'uris_response.dart';

/// Creates a new ContactCenter in a given project and location.
class ContactCenter extends CustomResource {
  /// Optional. Info about the first admin user, such as given name and family name.
  late final Output<AdminUserResponse> adminUser;

  /// Optional. Whether to enable users to be created in the CCAIP-instance concurrently to having users in Cloud identity
  late final Output<bool> ccaipManagedUsers;

  /// Required. Id of the requesting object If auto-generating Id server-side, remove this field and contact_center_id from the method_signature of Create RPC
  late final Output<String> contactCenterId;

  /// [Output only] Create time stamp
  late final Output<String> createTime;

  /// Immutable. At least 2 and max 16 char long, must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt).
  late final Output<String> customerDomainPrefix;

  /// A user friendly name for the ContactCenter.
  late final Output<String> displayName;

  /// The configuration of this instance, it is currently immutable once created.
  late final Output<InstanceConfigResponse2> instanceConfig;

  /// Immutable. The KMS key name to encrypt the user input (`ContactCenter`).
  late final Output<String> kmsKey;

  /// Labels as key value pairs
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// name of resource
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Optional. Params that sets up Google as IdP.
  late final Output<SAMLParamsResponse> samlParams;

  /// The state of this contact center.
  late final Output<String> state;

  /// [Output only] Update time stamp
  late final Output<String> updateTime;

  /// URIs to access the deployed ContactCenters.
  late final Output<URIsResponse> uris;

  /// Optional. Email address of the first admin user.
  late final Output<String> userEmail;

  ContactCenter(
    String name, {
    ContactCenterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:contactcenteraiplatform/v1alpha1:ContactCenter',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminUser = registerOutput<AdminUserResponse>('adminUser');
    this.ccaipManagedUsers = registerOutput<bool>('ccaipManagedUsers');
    this.contactCenterId = registerOutput<String>('contactCenterId');
    this.createTime = registerOutput<String>('createTime');
    this.customerDomainPrefix = registerOutput<String>('customerDomainPrefix');
    this.displayName = registerOutput<String>('displayName');
    this.instanceConfig =
        registerOutput<InstanceConfigResponse2>('instanceConfig');
    this.kmsKey = registerOutput<String>('kmsKey');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.samlParams = registerOutput<SAMLParamsResponse>('samlParams');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.uris = registerOutput<URIsResponse>('uris');
    this.userEmail = registerOutput<String>('userEmail');
  }
}
