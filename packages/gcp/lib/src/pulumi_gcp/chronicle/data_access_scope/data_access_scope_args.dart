// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_access_scope_allowed_data_access_label/data_access_scope_allowed_data_access_label.dart';
import '../data_access_scope_denied_data_access_label/data_access_scope_denied_data_access_label.dart';

/// The set of arguments for DataAccessScope.
class DataAccessScopeArgs {
  /// Optional. Whether or not the scope allows all labels, allow_all and
  /// allowed_data_access_labels are mutually exclusive and one of them must be
  /// present. denied_data_access_labels can still be used along with allow_all.
  /// When combined with denied_data_access_labels, access will be granted to all
  /// data that doesn't have labels mentioned in denied_data_access_labels. E.g.:
  /// A customer with scope with denied labels A and B and allow_all will be able
  /// to see all data except data labeled with A and data labeled with B and data
  /// with labels A and B.
  final Input<bool>? allowAll;

  /// The allowed labels for the scope. There has to be at
  /// least one label allowed for the scope to be valid.
  /// The logical operator for evaluation of the allowed labels is OR.
  /// Either allow_all or allowed_data_access_labels needs to be provided.
  /// E.g.: A customer with scope with allowed labels A and B will be able
  /// to see data with labeled with A or B or (A and B).
  /// Structure is documented below.
  final Input<List<DataAccessScopeAllowedDataAccessLabel>>?
      allowedDataAccessLabels;

  /// Required. The user provided scope id which will become the last part of the name
  /// of the scope resource.
  /// Needs to be compliant with https://google.aip.dev/122
  final Input<String> dataAccessScopeId;

  /// Optional. The denied labels for the scope.
  /// The logical operator for evaluation of the denied labels is AND.
  /// E.g.: A customer with scope with denied labels A and B won't be able
  /// to see data labeled with A and data labeled with B
  /// and data with labels A and B.
  /// Structure is documented below.
  final Input<List<DataAccessScopeDeniedDataAccessLabel>>?
      deniedDataAccessLabels;

  /// Optional. A description of the data access scope for a human reader.
  final Input<String>? description;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final Input<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  DataAccessScopeArgs({
    this.allowAll,
    this.allowedDataAccessLabels,
    required this.dataAccessScopeId,
    this.deniedDataAccessLabels,
    this.description,
    required this.instance,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowAllValue = allowAll;
    if (allowAllValue != null) {
      map['allowAll'] = allowAllValue;
    }
    final allowedDataAccessLabelsValue = allowedDataAccessLabels;
    if (allowedDataAccessLabelsValue != null) {
      map['allowedDataAccessLabels'] = Input.mapOptionalInputValue<
              List<DataAccessScopeAllowedDataAccessLabel>,
              List<Map<String, dynamic>>>(
          allowedDataAccessLabelsValue,
          (value) => Input.encodeList<DataAccessScopeAllowedDataAccessLabel,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['dataAccessScopeId'] = dataAccessScopeId;
    final deniedDataAccessLabelsValue = deniedDataAccessLabels;
    if (deniedDataAccessLabelsValue != null) {
      map['deniedDataAccessLabels'] = Input.mapOptionalInputValue<
              List<DataAccessScopeDeniedDataAccessLabel>,
              List<Map<String, dynamic>>>(
          deniedDataAccessLabelsValue,
          (value) => Input.encodeList<DataAccessScopeDeniedDataAccessLabel,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['instance'] = instance;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DataAccessScopeArgs.fromMap(Map<String, dynamic> map) {
    return DataAccessScopeArgs(
      allowAll: Input.asOptionalInput<bool>(map['allowAll']),
      allowedDataAccessLabels:
          Input.asOptionalInput<List<DataAccessScopeAllowedDataAccessLabel>>(
              map['allowedDataAccessLabels']),
      dataAccessScopeId: Input.asInput<String>(map['dataAccessScopeId']),
      deniedDataAccessLabels:
          Input.asOptionalInput<List<DataAccessScopeDeniedDataAccessLabel>>(
              map['deniedDataAccessLabels']),
      description: Input.asOptionalInput<String>(map['description']),
      instance: Input.asInput<String>(map['instance']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
