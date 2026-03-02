// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionEksPropertyPodPropertyImagePullSecret {
  /// The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  final pulumi.Input<String> name;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyImagePullSecret].
  /// [name] The name of the job definition to register. It can be up to 128 letters long. It can contain uppercase and lowercase letters, numbers, hyphens (-), and underscores (_).
  GetJobDefinitionEksPropertyPodPropertyImagePullSecret({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetJobDefinitionEksPropertyPodPropertyImagePullSecret.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyImagePullSecret(
      name: (map['name'] as String).input(),
    );
  }
}

