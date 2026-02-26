import 'package:pulumi/pulumi.dart';
import 'data_exchange_args2.dart';

/// Creates a new data exchange.
/// Auto-naming is currently not supported for this resource.
class DataExchange2 extends CustomResource {
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

  DataExchange2(
    String name, {
    DataExchangeArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:analyticshub/v1beta1:DataExchange',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.dataExchangeId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.documentation = Output.createUnknown<String>();
    this.icon = Output.createUnknown<String>();
    this.listingCount = Output.createUnknown<int>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.primaryContact = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
  }
}
