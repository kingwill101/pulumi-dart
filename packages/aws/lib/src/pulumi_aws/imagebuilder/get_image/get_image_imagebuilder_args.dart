// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getImage.
class GetImageImagebuilderArgs {
  /// ARN of the image. The suffix can either be specified with wildcards (`x.x.x`) to fetch the latest build version or a full build version (e.g., `2020.11.26/1`) to fetch an exact version.
  final pulumi.Input<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags for the image.
  final pulumi.Input<Map<String, String>>? tags;

  GetImageImagebuilderArgs({
    required this.arn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetImageImagebuilderArgs.fromMap(Map<String, dynamic> map) {
    return GetImageImagebuilderArgs(
      arn: pulumi.Input.asInput<String>(map['arn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
