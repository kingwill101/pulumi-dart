// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_link_args_doc}
/// Arguments for getLink.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_link_args_doc}
class GetLinkArgs {
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> linkId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLinkArgs].
  /// [bucketId] Required.
  /// [linkId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetLinkArgs({
    required String bucketId,
    required String linkId,
    required String location,
    String? project,
  }) :
      bucketId = pulumi.Input.asInput<String>(bucketId),
      linkId = pulumi.Input.asInput<String>(linkId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'linkId': linkId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkArgs(
      bucketId: map['bucketId'] as String,
      linkId: map['linkId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

