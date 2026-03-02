// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Rules for regulating supported archive files (BZip2, Cpio, Deb, GZip, Rpm, Tar, Zip) during data replication. All properties are optional and only the configured options will be applied against archives. As an example, suppose minimumSizeForExpansion is 10 MiB and maximumExpansionSizeLimit is 1 GiB. Then all archives smaller than 10 MiB will be treated as though the archive ruleset is disabled, although other rulesets will apply as usual. Furthermore, all archives at least 10 MiB in size but with a decompressed size greater than 1 GiB will fail the ruleset. All other archives will have their contents extracted and each extracted element will be applied to all rulesets.
class ArchiveRulesetResponse {
  /// Optional. Provides the multiplication value for an archive in total based on the initial object being validated. This value takes the root object size and multiplies it by this value to create a maximum. Once this maximum is exceeded, the archive is failed. Used to detect and block archives with suspiciously high compression (e.g., zip bombs).
  final pulumi.Input<double>? maximumCompressionRatioLimit;
  /// Optional. The maximum depth of nested archives that can be expanded. Limits how many layers of embedded archives will be processed. Archives exceeding the max limit will be denied for replication.
  final pulumi.Input<double>? maximumDepthLimit;
  /// Optional. The combined maximum size (in bytes) of all extracted files that an expanded archive is allowed to reach. Archives exceeding the max limit will be denied for replication.
  final pulumi.Input<double>? maximumExpansionSizeLimit;
  /// Optional. Default is 0. The minimum archive file size (in bytes) required to trigger expansion during replication. Any archive file size below the configured threshold will skip the rest of the configured rulesets for archives.
  final pulumi.Input<double>? minimumSizeForExpansion;

  /// Creates a new [ArchiveRulesetResponse].
  /// [maximumCompressionRatioLimit] Optional. Provides the multiplication value for an archive in total based on the initial object being validated. This value takes the root object size and multiplies it by this value to create a maximum. Once this maximum is exceeded, the archive is failed. Used to detect and block archives with suspiciously high compression (e.g., zip bombs).
  /// [maximumDepthLimit] Optional. The maximum depth of nested archives that can be expanded. Limits how many layers of embedded archives will be processed. Archives exceeding the max limit will be denied for replication.
  /// [maximumExpansionSizeLimit] Optional. The combined maximum size (in bytes) of all extracted files that an expanded archive is allowed to reach. Archives exceeding the max limit will be denied for replication.
  /// [minimumSizeForExpansion] Optional. Default is 0. The minimum archive file size (in bytes) required to trigger expansion during replication. Any archive file size below the configured threshold will skip the rest of the configured rulesets for archives.
  ArchiveRulesetResponse({
    this.maximumCompressionRatioLimit,
    this.maximumDepthLimit,
    this.maximumExpansionSizeLimit,
    this.minimumSizeForExpansion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumCompressionRatioLimit': ?maximumCompressionRatioLimit,
      'maximumDepthLimit': ?maximumDepthLimit,
      'maximumExpansionSizeLimit': ?maximumExpansionSizeLimit,
      'minimumSizeForExpansion': ?minimumSizeForExpansion,
    };
  }

  factory ArchiveRulesetResponse.fromMap(Map<String, dynamic> map) {
    return ArchiveRulesetResponse(
      maximumCompressionRatioLimit: map['maximumCompressionRatioLimit'] == null ? null : (map['maximumCompressionRatioLimit']! as double).input(),
      maximumDepthLimit: map['maximumDepthLimit'] == null ? null : (map['maximumDepthLimit']! as double).input(),
      maximumExpansionSizeLimit: map['maximumExpansionSizeLimit'] == null ? null : (map['maximumExpansionSizeLimit']! as double).input(),
      minimumSizeForExpansion: map['minimumSizeForExpansion'] == null ? null : (map['minimumSizeForExpansion']! as double).input(),
    );
  }
}

