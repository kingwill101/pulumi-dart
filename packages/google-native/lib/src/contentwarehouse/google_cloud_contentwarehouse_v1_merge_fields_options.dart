// ignore_for_file: unused_element, unnecessary_cast

/// Options for merging updated fields.
class GoogleCloudContentwarehouseV1MergeFieldsOptions {
  /// When merging message fields, the default behavior is to merge the content of two message fields together. If you instead want to use the field from the source message to replace the corresponding field in the destination message, set this flag to true. When this flag is set, specified submessage fields that are missing in source will be cleared in destination.
  final bool? replaceMessageFields;

  /// When merging repeated fields, the default behavior is to append entries from the source repeated field to the destination repeated field. If you instead want to keep only the entries from the source repeated field, set this flag to true. If you want to replace a repeated field within a message field on the destination message, you must set both replace_repeated_fields and replace_message_fields to true, otherwise the repeated fields will be appended.
  final bool? replaceRepeatedFields;

  /// Creates a new [GoogleCloudContentwarehouseV1MergeFieldsOptions].
  /// [replaceMessageFields] When merging message fields, the default behavior is to merge the content of two message fields together. If you instead want to use the field from the source message to replace the corresponding field in the destination message, set this flag to true. When this flag is set, specified submessage fields that are missing in source will be cleared in destination.
  /// [replaceRepeatedFields] When merging repeated fields, the default behavior is to append entries from the source repeated field to the destination repeated field. If you instead want to keep only the entries from the source repeated field, set this flag to true. If you want to replace a repeated field within a message field on the destination message, you must set both replace_repeated_fields and replace_message_fields to true, otherwise the repeated fields will be appended.
  GoogleCloudContentwarehouseV1MergeFieldsOptions({
    this.replaceMessageFields,
    this.replaceRepeatedFields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final replaceMessageFieldsValue = replaceMessageFields;
    if (replaceMessageFieldsValue != null) {
      map['replaceMessageFields'] = replaceMessageFieldsValue;
    }
    final replaceRepeatedFieldsValue = replaceRepeatedFields;
    if (replaceRepeatedFieldsValue != null) {
      map['replaceRepeatedFields'] = replaceRepeatedFieldsValue;
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1MergeFieldsOptions.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1MergeFieldsOptions(
      replaceMessageFields: map['replaceMessageFields'] == null
          ? null
          : map['replaceMessageFields'] as bool,
      replaceRepeatedFields: map['replaceRepeatedFields'] == null
          ? null
          : map['replaceRepeatedFields'] as bool,
    );
  }
}
