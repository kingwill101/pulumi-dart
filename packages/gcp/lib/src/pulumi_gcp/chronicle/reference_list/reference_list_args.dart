// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../reference_list_entry/reference_list_entry.dart';
import '../reference_list_scope_info/reference_list_scope_info.dart';

/// The set of arguments for ReferenceList.
class ReferenceListArgs {
  /// Required. A user-provided description of the reference list.
  final pulumi.Input<String> description;

  /// Required. The entries of the reference list.
  /// When listed, they are returned in the order that was specified at creation
  /// or update. The combined size of the values of the reference list may not
  /// exceed 6MB.
  /// This is returned only when the view is REFERENCE_LIST_VIEW_FULL.
  /// Structure is documented below.
  final pulumi.Input<List<ReferenceListEntry>> entries;

  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String> instance;

  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Required. The ID to use for the reference list. This is also the display name for
  /// the reference list. It must satisfy the following requirements:
  /// - Starts with letter.
  /// - Contains only letters, numbers and underscore.
  /// - Has length < 256.
  /// - Must be unique.
  final pulumi.Input<String> referenceListId;

  /// ScopeInfo specifies the scope info of the reference list.
  /// Structure is documented below.
  final pulumi.Input<List<ReferenceListScopeInfo>>? scopeInfos;

  /// Possible values:
  /// REFERENCE_LIST_SYNTAX_TYPE_PLAIN_TEXT_STRING
  /// REFERENCE_LIST_SYNTAX_TYPE_REGEX
  /// REFERENCE_LIST_SYNTAX_TYPE_CIDR
  final pulumi.Input<String> syntaxType;

  ReferenceListArgs({
    required this.description,
    required this.entries,
    required this.instance,
    required this.location,
    this.project,
    required this.referenceListId,
    this.scopeInfos,
    required this.syntaxType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['entries'] = pulumi.Input.mapInputValue<List<ReferenceListEntry>,
            List<Map<String, dynamic>>>(
        entries,
        (value) =>
            pulumi.Input.encodeList<ReferenceListEntry, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['instance'] = instance;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['referenceListId'] = referenceListId;
    final scopeInfosValue = scopeInfos;
    if (scopeInfosValue != null) {
      map['scopeInfos'] = pulumi.Input.mapOptionalInputValue<
              List<ReferenceListScopeInfo>, List<Map<String, dynamic>>>(
          scopeInfosValue,
          (value) => pulumi.Input.encodeList<ReferenceListScopeInfo,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['syntaxType'] = syntaxType;
    return map;
  }

  factory ReferenceListArgs.fromMap(Map<String, dynamic> map) {
    return ReferenceListArgs(
      description: pulumi.Input.asInput<String>(map['description']),
      entries: pulumi.Input.asInput<List<ReferenceListEntry>>(map['entries']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      referenceListId: pulumi.Input.asInput<String>(map['referenceListId']),
      scopeInfos: pulumi.Input.asOptionalInput<List<ReferenceListScopeInfo>>(
          map['scopeInfos']),
      syntaxType: pulumi.Input.asInput<String>(map['syntaxType']),
    );
  }
}
