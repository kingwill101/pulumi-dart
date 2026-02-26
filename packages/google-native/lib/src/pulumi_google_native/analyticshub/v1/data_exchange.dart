import 'package:pulumi/pulumi.dart';
import 'data_exchange_args.dart';
import 'sharing_environment_config_response.dart';

/// Creates a new data exchange.
/// Auto-naming is currently not supported for this resource.
class DataExchange extends CustomResource {
  /// Required. The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Max length: 100 bytes.
  late final Output<String> dataExchangeId;

  /// Optional. Description of the data exchange. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  late final Output<String> description;

  /// Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and must not start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  late final Output<String> displayName;

  /// Optional. Documentation describing the data exchange.
  late final Output<String> documentation;

  /// Optional. Base64 encoded image representing the data exchange. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the content of the fields are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  late final Output<String> icon;

  /// Number of listings contained in the data exchange.
  late final Output<int> listingCount;
  late final Output<String> location;

  /// The resource name of the data exchange. e.g. `projects/myproject/locations/US/dataExchanges/123`.
  late final Output<String> name;

  /// Optional. Email or URL of the primary point of contact of the data exchange. Max Length: 1000 bytes.
  late final Output<String> primaryContact;
  late final Output<String> project;

  /// Optional. Configurable data sharing environment option for a data exchange.
  late final Output<SharingEnvironmentConfigResponse> sharingEnvironmentConfig;

  DataExchange(
    String name, {
    DataExchangeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:analyticshub/v1:DataExchange',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataExchangeId = registerOutput<String>('dataExchangeId');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.documentation = registerOutput<String>('documentation');
    this.icon = registerOutput<String>('icon');
    this.listingCount = registerOutput<int>('listingCount');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.primaryContact = registerOutput<String>('primaryContact');
    this.project = registerOutput<String>('project');
    this.sharingEnvironmentConfig =
        registerOutput<SharingEnvironmentConfigResponse>(
            'sharingEnvironmentConfig');
  }
}
