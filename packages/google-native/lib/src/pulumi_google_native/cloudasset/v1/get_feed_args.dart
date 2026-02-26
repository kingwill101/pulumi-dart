// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getFeed.
class GetFeedArgs {
  final Input<String> feedId;
  final Input<String> v1Id;
  final Input<String> v1Id1;

  GetFeedArgs({
    required this.feedId,
    required this.v1Id,
    required this.v1Id1,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['feedId'] = feedId;
    map['v1Id'] = v1Id;
    map['v1Id1'] = v1Id1;
    return map;
  }

  factory GetFeedArgs.fromMap(Map<String, dynamic> map) {
    return GetFeedArgs(
      feedId: Input.asInput<String>(map['feedId']),
      v1Id: Input.asInput<String>(map['v1Id']),
      v1Id1: Input.asInput<String>(map['v1Id1']),
    );
  }
}
