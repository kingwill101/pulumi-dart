// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../hl7_store_notification_config/hl7_store_notification_config.dart';
import '../hl7_store_notification_configs/hl7_store_notification_configs.dart';
import '../hl7_store_parser_config/hl7_store_parser_config.dart';

/// The set of arguments for Hl7Store.
class Hl7StoreArgs {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final Input<String> dataset;

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
  final Input<Map<String, String>>? labels;

  /// The resource name for the Hl7V2Store.
  /// ** Changing this property may recreate the Hl7v2 store (removing all data) **
  final Input<String>? name;

  /// (Optional, Deprecated)
  /// A nested object resource.
  /// Structure is documented below.
  ///
  /// > **Warning:** `notification_config` is deprecated and will be removed in a future major release. Use `notification_configs` instead.
  final Input<Hl7StoreNotificationConfig>? notificationConfig;

  /// A list of notification configs. Each configuration uses a filter to determine whether to publish a
  /// message (both Ingest & Create) on the corresponding notification destination. Only the message name
  /// is sent as part of the notification. Supplied by the client.
  /// Structure is documented below.
  final Input<List<Hl7StoreNotificationConfigs>>? notificationConfigs;

  /// A nested object resource.
  /// Structure is documented below.
  final Input<Hl7StoreParserConfig>? parserConfig;

  /// Determines whether duplicate messages are allowed.
  final Input<bool>? rejectDuplicateMessage;

  Hl7StoreArgs({
    required this.dataset,
    this.labels,
    this.name,
    this.notificationConfig,
    this.notificationConfigs,
    this.parserConfig,
    this.rejectDuplicateMessage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataset'] = dataset;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notificationConfigValue = notificationConfig;
    if (notificationConfigValue != null) {
      map['notificationConfig'] = Input.mapOptionalInputValue<
              Hl7StoreNotificationConfig, Map<String, dynamic>>(
          notificationConfigValue, (value) => value.toMap());
    }
    final notificationConfigsValue = notificationConfigs;
    if (notificationConfigsValue != null) {
      map['notificationConfigs'] = Input.mapOptionalInputValue<
              List<Hl7StoreNotificationConfigs>, List<Map<String, dynamic>>>(
          notificationConfigsValue,
          (value) => Input.encodeList<Hl7StoreNotificationConfigs,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final parserConfigValue = parserConfig;
    if (parserConfigValue != null) {
      map['parserConfig'] = Input.mapOptionalInputValue<Hl7StoreParserConfig,
          Map<String, dynamic>>(parserConfigValue, (value) => value.toMap());
    }
    final rejectDuplicateMessageValue = rejectDuplicateMessage;
    if (rejectDuplicateMessageValue != null) {
      map['rejectDuplicateMessage'] = rejectDuplicateMessageValue;
    }
    return map;
  }

  factory Hl7StoreArgs.fromMap(Map<String, dynamic> map) {
    return Hl7StoreArgs(
      dataset: Input.asInput<String>(map['dataset']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      notificationConfig: Input.asOptionalInput<Hl7StoreNotificationConfig>(
          map['notificationConfig']),
      notificationConfigs:
          Input.asOptionalInput<List<Hl7StoreNotificationConfigs>>(
              map['notificationConfigs']),
      parserConfig:
          Input.asOptionalInput<Hl7StoreParserConfig>(map['parserConfig']),
      rejectDuplicateMessage:
          Input.asOptionalInput<bool>(map['rejectDuplicateMessage']),
    );
  }
}
