// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hl7_store_notification_config.dart';
import 'hl7_store_notification_configs.dart';
import 'hl7_store_parser_config.dart';

/// {@template pulumi_healthcare_hl7_store_hl7_store_args_doc}
/// The set of arguments for Hl7Store.
/// {@endtemplate}
/// {@macro pulumi_healthcare_hl7_store_hl7_store_args_doc}
class Hl7StoreArgs {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final pulumi.Input<String> dataset;
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
  final pulumi.Input<Map<String, String>>? labels;
  /// The resource name for the Hl7V2Store.
  /// ** Changing this property may recreate the Hl7v2 store (removing all data) **
  final pulumi.Input<String>? name;
  /// (Optional, Deprecated)
  /// A nested object resource.
  /// Structure is documented below.
  ///
  /// > **Warning:** `notification_config` is deprecated and will be removed in a future major release. Use `notification_configs` instead.
  final pulumi.Input<Hl7StoreNotificationConfig>? notificationConfig;
  /// A list of notification configs. Each configuration uses a filter to determine whether to publish a
  /// message (both Ingest & Create) on the corresponding notification destination. Only the message name
  /// is sent as part of the notification. Supplied by the client.
  /// Structure is documented below.
  final pulumi.Input<List<Hl7StoreNotificationConfigs>>? notificationConfigs;
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<Hl7StoreParserConfig>? parserConfig;
  /// Determines whether duplicate messages are allowed.
  final pulumi.Input<bool>? rejectDuplicateMessage;

  /// Creates a new [Hl7StoreArgs].
  /// [dataset] Identifies the dataset addressed by this request. Must be in the format
  /// [labels] User-supplied key-value pairs used to organize HL7v2 stores.
  /// [name] The resource name for the Hl7V2Store.
  /// [notificationConfig] (Optional, Deprecated)
  /// [notificationConfigs] A list of notification configs. Each configuration uses a filter to determine whether to publish a
  /// [parserConfig] A nested object resource.
  /// [rejectDuplicateMessage] Determines whether duplicate messages are allowed.
  Hl7StoreArgs({
    required String dataset,
    Map<String, String>? labels,
    String? name,
    Hl7StoreNotificationConfig? notificationConfig,
    List<Hl7StoreNotificationConfigs>? notificationConfigs,
    Hl7StoreParserConfig? parserConfig,
    bool? rejectDuplicateMessage,
  }) :
      dataset = pulumi.Input.asInput<String>(dataset),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      notificationConfig = pulumi.Input.asOptionalInput<Hl7StoreNotificationConfig>(notificationConfig),
      notificationConfigs = pulumi.Input.asOptionalInput<List<Hl7StoreNotificationConfigs>>(notificationConfigs),
      parserConfig = pulumi.Input.asOptionalInput<Hl7StoreParserConfig>(parserConfig),
      rejectDuplicateMessage = pulumi.Input.asOptionalInput<bool>(rejectDuplicateMessage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
      'labels': ?labels,
      'name': ?name,
      'notificationConfig': ?pulumi.Input.mapOptionalInputValue<Hl7StoreNotificationConfig, Map<String, dynamic>>(notificationConfig, (value) => value.toMap()),
      'notificationConfigs': ?pulumi.Input.mapOptionalInputValue<List<Hl7StoreNotificationConfigs>, List<Map<String, dynamic>>>(notificationConfigs, (value) => pulumi.Input.encodeList<Hl7StoreNotificationConfigs, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parserConfig': ?pulumi.Input.mapOptionalInputValue<Hl7StoreParserConfig, Map<String, dynamic>>(parserConfig, (value) => value.toMap()),
      'rejectDuplicateMessage': ?rejectDuplicateMessage,
    };
  }

  factory Hl7StoreArgs.fromMap(Map<String, dynamic> map) {
    return Hl7StoreArgs(
      dataset: map['dataset'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      notificationConfig: map['notificationConfig'] == null ? null : Hl7StoreNotificationConfig.fromMap((map['notificationConfig'] as Map).cast<String, dynamic>()),
      notificationConfigs: map['notificationConfigs'] == null ? null : pulumi.Input.decodeList<Hl7StoreNotificationConfigs>(map['notificationConfigs'], (value) => Hl7StoreNotificationConfigs.fromMap((value as Map).cast<String, dynamic>())),
      parserConfig: map['parserConfig'] == null ? null : Hl7StoreParserConfig.fromMap((map['parserConfig'] as Map).cast<String, dynamic>()),
      rejectDuplicateMessage: map['rejectDuplicateMessage'] == null ? null : map['rejectDuplicateMessage'] as bool,
    );
  }
}

