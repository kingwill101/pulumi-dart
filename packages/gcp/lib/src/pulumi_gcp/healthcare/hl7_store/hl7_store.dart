import 'package:pulumi/pulumi.dart' as pulumi;
import '../hl7_store_notification_config/hl7_store_notification_config.dart';
import '../hl7_store_notification_configs/hl7_store_notification_configs.dart';
import '../hl7_store_parser_config/hl7_store_parser_config.dart';
import 'hl7_store_args.dart';

/// A Hl7V2Store is a datastore inside a Healthcare dataset that conforms to the FHIR (https://www.hl7.org/hl7V2/STU3/)
/// standard for Healthcare information exchange
///
///
/// To get more information about Hl7V2Store, see:
///
/// * [API documentation](https://cloud.google.com/healthcare/docs/reference/rest/v1/projects.locations.datasets.hl7V2Stores)
/// * How-to Guides
/// * [Creating a HL7v2 Store](https://cloud.google.com/healthcare/docs/how-tos/hl7v2)
///
/// ## Example Usage
///
/// ### Healthcare Hl7 V2 Store Basic
///
///
///
/// ### Healthcare Hl7 V2 Store Parser Config
///
///
///
/// ### Healthcare Hl7 V2 Store Unschematized
///
///
///
///
/// ## Import
///
/// Hl7V2Store can be imported using any of these accepted formats:
///
/// * `{{dataset}}/hl7V2Stores/{{name}}`
///
/// * `{{dataset}}/{{name}}`
///
/// When using the `pulumi import` command, Hl7V2Store can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:healthcare/hl7Store:Hl7Store default {{dataset}}/hl7V2Stores/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:healthcare/hl7Store:Hl7Store default {{dataset}}/{{name}}
/// ```
class Hl7Store extends pulumi.CustomResource {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  late final pulumi.Output<String> dataset;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// User-supplied key-value pairs used to organize HL7v2 stores.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
  /// conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
  /// bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be associated with a given store.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The resource name for the Hl7V2Store.
  /// ** Changing this property may recreate the Hl7v2 store (removing all data) **
  late final pulumi.Output<String> name;

  /// (Optional, Deprecated)
  /// A nested object resource.
  /// Structure is documented below.
  ///
  /// > **Warning:** `notification_config` is deprecated and will be removed in a future major release. Use `notification_configs` instead.
  late final pulumi.Output<Hl7StoreNotificationConfig?> notificationConfig;

  /// A list of notification configs. Each configuration uses a filter to determine whether to publish a
  /// message (both Ingest & Create) on the corresponding notification destination. Only the message name
  /// is sent as part of the notification. Supplied by the client.
  /// Structure is documented below.
  late final pulumi.Output<List<Hl7StoreNotificationConfigs>?>
      notificationConfigs;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<Hl7StoreParserConfig> parserConfig;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Determines whether duplicate messages are allowed.
  late final pulumi.Output<bool?> rejectDuplicateMessage;

  /// The fully qualified name of this dataset
  late final pulumi.Output<String> selfLink;

  Hl7Store(
    String name, {
    Hl7StoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/hl7Store:Hl7Store',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataset = registerOutput<String>('dataset');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.notificationConfig =
        registerOutput<Hl7StoreNotificationConfig?>('notificationConfig');
    this.notificationConfigs =
        registerOutput<List<Hl7StoreNotificationConfigs>?>(
            'notificationConfigs');
    this.parserConfig = registerOutput<Hl7StoreParserConfig>('parserConfig');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.rejectDuplicateMessage =
        registerOutput<bool?>('rejectDuplicateMessage');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
