// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBitbucketServerConfig.
class GetBitbucketServerConfigArgs {
  final Input<String> bitbucketServerConfigId;
  final Input<String> location;
  final Input<String>? project;

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
          Input.asInput<String>(map['bitbucketServerConfigId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
