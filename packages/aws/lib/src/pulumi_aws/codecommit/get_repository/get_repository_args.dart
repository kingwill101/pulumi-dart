// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRepository.
class GetRepositoryArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name for the repository. This needs to be less than 100 characters.
  final pulumi.Input<String> repositoryName;

  GetRepositoryArgs({
    this.region,
    required this.repositoryName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repositoryName'] = repositoryName;
    return map;
  }

  factory GetRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repositoryName: pulumi.Input.asInput<String>(map['repositoryName']),
    );
  }
}
