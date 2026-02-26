import 'package:pulumi/pulumi.dart';
import 'trust_config_args.dart';
import 'trust_store_response.dart';

/// Creates a new TrustConfig in a given project and location.
class TrustConfig extends CustomResource {
  /// The creation timestamp of a TrustConfig.
  late final Output<String> createTime;

  /// One or more paragraphs of text description of a TrustConfig.
  late final Output<String> description;

  /// This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// Set of labels associated with a TrustConfig.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// A user-defined name of the trust config. TrustConfig names must be unique globally and match pattern `projects/*/locations/*/trustConfigs/*`.
  late final Output<String> name;
  late final Output<String> project;

  /// Required. A user-provided name of the TrustConfig. Must match the regexp `[a-z0-9-]{1,63}`.
  late final Output<String> trustConfigId;

  /// Set of trust stores to perform validation against. This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. Only one TrustStore specified is currently allowed.
  late final Output<List<TrustStoreResponse>> trustStores;

  /// The last update timestamp of a TrustConfig.
  late final Output<String> updateTime;

  TrustConfig(
    String name, {
    TrustConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:certificatemanager/v1:TrustConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.trustConfigId = registerOutput<String>('trustConfigId');
    this.trustStores = registerOutput<List<TrustStoreResponse>>('trustStores');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
