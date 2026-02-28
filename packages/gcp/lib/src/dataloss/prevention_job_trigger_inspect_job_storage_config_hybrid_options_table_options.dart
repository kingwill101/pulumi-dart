// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_job_trigger_inspect_job_storage_config_hybrid_options_table_options_identifying_field.dart';

class PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptions {
  /// The columns that are the primary keys for table objects included in ContentItem. A copy of this
  /// cell's value will stored alongside alongside each finding so that the finding can be traced to
  /// the specific row it came from. No more than 3 may be provided.
  /// Structure is documented below.
  final List<
          PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingField>?
      identifyingFields;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptions].
  /// [identifyingFields] The columns that are the primary keys for table objects included in ContentItem. A copy of this
  PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptions({
    this.identifyingFields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final identifyingFieldsValue = identifyingFields;
    if (identifyingFieldsValue != null) {
      map['identifyingFields'] = pulumi.Input.encodeList<
          PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingField,
          Map<String,
              dynamic>>(identifyingFieldsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptions.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptions(
      identifyingFields: map['identifyingFields'] == null
          ? null
          : pulumi.Input.decodeList<
                  PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingField>(
              map['identifyingFields'],
              (value) =>
                  PreventionJobTriggerInspectJobStorageConfigHybridOptionsTableOptionsIdentifyingField
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
