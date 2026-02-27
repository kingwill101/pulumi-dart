// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBitbucketServerConfig.
class GetBitbucketServerConfigArgs {
  final pulumi.Input<String> bitbucketServerConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetBitbucketServerConfigArgs({
    required this.bitbucketServerConfigId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bitbucketServerConfigId'] = bitbucketServerConfigId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBitbucketServerConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetBitbucketServerConfigArgs(
      bitbucketServerConfigId:
          pulumi.Input.asInput<String>(map['bitbucketServerConfigId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
