import 'package:pulumi/pulumi.dart';
import 'federation_args2.dart';

/// Creates a metastore federation in a project and location.
class Federation2 extends CustomResource {
  /// A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  late final Output<Map<String, String>> backendMetastores;

  /// The time when the metastore federation was created.
  late final Output<String> createTime;

  /// The federation endpoint.
  late final Output<String> endpointUri;

  /// Required. The ID of the metastore federation, which is used as the final component of the metastore federation's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  late final Output<String> federationId;

  /// User-defined labels for the metastore federation.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Immutable. The relative resource name of the federation, of the form: projects/{project_number}/locations/{location_id}/federations/{federation_id}`.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  late final Output<String?> requestId;

  /// The current state of the federation.
  late final Output<String> state;

  /// Additional information about the current state of the metastore federation, if available.
  late final Output<String> stateMessage;

  /// The globally unique resource identifier of the metastore federation.
  late final Output<String> uid;

  /// The time when the metastore federation was last updated.
  late final Output<String> updateTime;

  /// Immutable. The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  late final Output<String> version;

  Federation2(
    String name, {
    FederationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:metastore/v1alpha:Federation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backendMetastores =
        registerOutput<Map<String, String>>('backendMetastores');
    this.createTime = registerOutput<String>('createTime');
    this.endpointUri = registerOutput<String>('endpointUri');
    this.federationId = registerOutput<String>('federationId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<String>('version');
  }
}
