import 'package:pulumi/pulumi.dart';
import '../ekm_connection_service_resolver/ekm_connection_service_resolver.dart';
import 'ekm_connection_args.dart';

/// `Ekm Connections` are used to control the connection settings for an `EXTERNAL_VPC` CryptoKey.
/// It is used to connect customer's external key manager to Google Cloud EKM.
///
///
/// > **Note:** Ekm Connections cannot be deleted from Google Cloud Platform.
///
///
/// To get more information about EkmConnection, see:
///
/// * [API documentation](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.ekmConnections)
/// * How-to Guides
/// * [Creating a Ekm Connection](https://cloud.google.com/kms/docs/create-ekm-connection)
///
/// ## Example Usage
///
/// ### Kms Ekm Connection Basic
///
///
///
///
/// ## Import
///
/// EkmConnection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/ekmConnections/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, EkmConnection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/ekmConnection:EkmConnection default projects/{{project}}/locations/{{location}}/ekmConnections/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/ekmConnection:EkmConnection default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/ekmConnection:EkmConnection default {{location}}/{{name}}
/// ```
class EkmConnection extends CustomResource {
  /// Output only. The time at which the EkmConnection was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS.
  late final Output<String> cryptoSpacePath;

  /// Optional. Etag of the currently stored EkmConnection.
  late final Output<String> etag;

  /// Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL
  /// Default value is `MANUAL`.
  /// Possible values are: `MANUAL`, `CLOUD_KMS`.
  late final Output<String?> keyManagementMode;

  /// The location for the EkmConnection.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  late final Output<String> location;

  /// The resource name for the EkmConnection.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported
  /// Structure is documented below.
  late final Output<List<EkmConnectionServiceResolver>> serviceResolvers;

  EkmConnection(
    String name, {
    EkmConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:kms/ekmConnection:EkmConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.cryptoSpacePath = registerOutput<String>('cryptoSpacePath');
    this.etag = registerOutput<String>('etag');
    this.keyManagementMode = registerOutput<String?>('keyManagementMode');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceResolvers =
        registerOutput<List<EkmConnectionServiceResolver>>('serviceResolvers');
  }
}
