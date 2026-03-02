// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_traffic_mirror_filter_traffic_mirror_filter_args_doc}
/// The set of arguments for TrafficMirrorFilter.
/// {@endtemplate}
/// {@macro pulumi_ec2_traffic_mirror_filter_traffic_mirror_filter_args_doc}
class TrafficMirrorFilterArgs {
  /// A description of the filter.
  final pulumi.Input<String>? description;
  /// List of amazon network services that should be mirrored. Valid values: `amazon-dns`.
  final pulumi.Input<List<String>>? networkServices;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TrafficMirrorFilterArgs].
  /// [description] A description of the filter.
  /// [networkServices] List of amazon network services that should be mirrored. Valid values: `amazon-dns`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  TrafficMirrorFilterArgs({
    this.description,
    this.networkServices,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'networkServices': ?networkServices,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory TrafficMirrorFilterArgs.fromMap(Map<String, dynamic> map) {
    return TrafficMirrorFilterArgs(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      networkServices: map['networkServices'] == null ? null : (((map['networkServices'] as List).cast<String>()).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

