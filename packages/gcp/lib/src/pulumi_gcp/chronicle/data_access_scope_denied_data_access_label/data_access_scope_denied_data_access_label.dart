// ignore_for_file: unused_element, unnecessary_cast

import '../data_access_scope_denied_data_access_label_ingestion_label/data_access_scope_denied_data_access_label_ingestion_label.dart';

class DataAccessScopeDeniedDataAccessLabel {
  /// The asset namespace configured in the forwarder
  /// of the customer's events.
  final String? assetNamespace;

  /// The name of the data access label.
  final String? dataAccessLabel;

  /// (Output)
  /// Output only. The display name of the label.
  /// Data access label and log types's name
  /// will match the display name of the resource.
  /// The asset namespace will match the namespace itself.
  /// The ingestion key value pair will match the key of the tuple.
  final String? displayName;

  /// Representation of an ingestion label type.
  /// Structure is documented below.
  final DataAccessScopeDeniedDataAccessLabelIngestionLabel? ingestionLabel;

  /// The name of the log type.
  final String? logType;

  DataAccessScopeDeniedDataAccessLabel({
    this.assetNamespace,
    this.dataAccessLabel,
    this.displayName,
    this.ingestionLabel,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final assetNamespaceValue = assetNamespace;
    if (assetNamespaceValue != null) {
      map['assetNamespace'] = assetNamespaceValue;
    }
    final dataAccessLabelValue = dataAccessLabel;
    if (dataAccessLabelValue != null) {
      map['dataAccessLabel'] = dataAccessLabelValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final ingestionLabelValue = ingestionLabel;
    if (ingestionLabelValue != null) {
      map['ingestionLabel'] = ingestionLabelValue.toMap();
    }
    final logTypeValue = logType;
    if (logTypeValue != null) {
      map['logType'] = logTypeValue;
    }
    return map;
  }

  factory DataAccessScopeDeniedDataAccessLabel.fromMap(
      Map<String, dynamic> map) {
    return DataAccessScopeDeniedDataAccessLabel(
      assetNamespace: map['assetNamespace'] == null
          ? null
          : map['assetNamespace'] as String,
      dataAccessLabel: map['dataAccessLabel'] == null
          ? null
          : map['dataAccessLabel'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      ingestionLabel: map['ingestionLabel'] == null
          ? null
          : DataAccessScopeDeniedDataAccessLabelIngestionLabel.fromMap(
              (map['ingestionLabel'] as Map).cast<String, dynamic>()),
      logType: map['logType'] == null ? null : map['logType'] as String,
    );
  }
}
