// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_group_intent.dart';
import 'interconnect_group_interconnect.dart';

/// {@template pulumi_compute_interconnect_group_interconnect_group_args_doc}
/// The set of arguments for InterconnectGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_interconnect_group_interconnect_group_args_doc}
class InterconnectGroupArgs {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// The user's intent for this group. This is the only required field besides
  /// the name that must be specified on group creation.
  /// Structure is documented below.
  final pulumi.Input<InterconnectGroupIntent> intent;

  /// Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Interconnects per group" quota.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectGroupInterconnect>>? interconnects;

  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InterconnectGroupArgs].
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [intent] The user's intent for this group. This is the only required field besides
  /// [interconnects] Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be
  /// [project] The ID of the project in which the resource belongs.
  InterconnectGroupArgs({
    String? description,
    required InterconnectGroupIntent intent,
    List<InterconnectGroupInterconnect>? interconnects,
    String? name,
    String? project,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       intent = pulumi.Input.asInput<InterconnectGroupIntent>(intent),
       interconnects =
           pulumi.Input.asOptionalInput<List<InterconnectGroupInterconnect>>(
             interconnects,
           ),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'intent':
          pulumi.Input.mapInputValue<
            InterconnectGroupIntent,
            Map<String, dynamic>
          >(intent, (value) => value.toMap()),
      'interconnects':
          ?pulumi.Input.mapOptionalInputValue<
            List<InterconnectGroupInterconnect>,
            List<Map<String, dynamic>>
          >(
            interconnects,
            (value) =>
                pulumi.Input.encodeList<
                  InterconnectGroupInterconnect,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': ?name,
      'project': ?project,
    };
  }

  factory InterconnectGroupArgs.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      intent: InterconnectGroupIntent.fromMap(
        (map['intent'] as Map).cast<String, dynamic>(),
      ),
      interconnects: map['interconnects'] == null
          ? null
          : pulumi.Input.decodeList<InterconnectGroupInterconnect>(
              map['interconnects'],
              (value) => InterconnectGroupInterconnect.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
