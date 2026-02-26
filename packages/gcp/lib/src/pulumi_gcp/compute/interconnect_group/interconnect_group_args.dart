// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../interconnect_group_intent/interconnect_group_intent.dart';
import '../interconnect_group_interconnect/interconnect_group_interconnect.dart';

/// The set of arguments for InterconnectGroup.
class InterconnectGroupArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// The user's intent for this group. This is the only required field besides
  /// the name that must be specified on group creation.
  /// Structure is documented below.
  final Input<InterconnectGroupIntent> intent;

  /// Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Interconnects per group" quota.
  /// Structure is documented below.
  final Input<List<InterconnectGroupInterconnect>>? interconnects;

  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  InterconnectGroupArgs({
    this.description,
    required this.intent,
    this.interconnects,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['intent'] =
        Input.mapInputValue<InterconnectGroupIntent, Map<String, dynamic>>(
            intent, (value) => value.toMap());
    final interconnectsValue = interconnects;
    if (interconnectsValue != null) {
      map['interconnects'] = Input.mapOptionalInputValue<
              List<InterconnectGroupInterconnect>, List<Map<String, dynamic>>>(
          interconnectsValue,
          (value) => Input.encodeList<InterconnectGroupInterconnect,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InterconnectGroupArgs.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupArgs(
      description: Input.asOptionalInput<String>(map['description']),
      intent: Input.asInput<InterconnectGroupIntent>(map['intent']),
      interconnects: Input.asOptionalInput<List<InterconnectGroupInterconnect>>(
          map['interconnects']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
