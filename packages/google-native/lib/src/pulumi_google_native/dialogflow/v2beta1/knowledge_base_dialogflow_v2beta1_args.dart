// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for KnowledgeBase.
class KnowledgeBaseDialogflowV2beta1Args {
  /// The display name of the knowledge base. The name must be 1024 bytes or less; otherwise, the creation request fails.
  final pulumi.Input<String> displayName;

  /// Language which represents the KnowledgeBase. When the KnowledgeBase is created/updated, this is populated for all non en-us languages. If not populated, the default language en-us applies.
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String>? location;

  /// The knowledge base resource name. The name must be empty when creating a knowledge base. Format: `projects//locations//knowledgeBases/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  KnowledgeBaseDialogflowV2beta1Args({
    required this.displayName,
    this.languageCode,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
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

  factory KnowledgeBaseDialogflowV2beta1Args.fromMap(Map<String, dynamic> map) {
    return KnowledgeBaseDialogflowV2beta1Args(
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      languageCode: pulumi.Input.asOptionalInput<String>(map['languageCode']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
