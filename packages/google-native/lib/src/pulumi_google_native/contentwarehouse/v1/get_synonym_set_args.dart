// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSynonymSet.
class GetSynonymSetArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> synonymSetId;

  GetSynonymSetArgs({
    required this.location,
    this.project,
    required this.synonymSetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['synonymSetId'] = synonymSetId;
    return map;
  }

  factory GetSynonymSetArgs.fromMap(Map<String, dynamic> map) {
    return GetSynonymSetArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      synonymSetId: pulumi.Input.asInput<String>(map['synonymSetId']),
    );
  }
}
