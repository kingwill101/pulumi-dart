// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_ami_filter/get_ami_filter.dart';

/// Arguments for getAmi.
class GetAmiArgs {
  /// If true, allow unsafe filter values. With unsafe
  /// filters and `most_recent` set to `true`, a third party may introduce a new image which
  /// will be returned by this data source. Consider filtering by owner or image ID rather
  /// than setting this argument.
  final Input<bool>? allowUnsafeFilter;

  /// Limit search to users with *explicit* launch permission on
  /// the image. Valid items are the numeric account ID or `self`.
  final Input<List<String>>? executableUsers;

  /// One or more name/value pairs to filter off of. There are
  /// several valid keys, for a full reference, check out
  /// [describe-images in the AWS CLI reference][1].
  final Input<List<GetAmiFilter>>? filters;

  /// If true, all deprecated AMIs are included in the response. If false, no deprecated AMIs are included in the response. If no value is specified, the default value is false.
  final Input<bool>? includeDeprecated;

  /// If more than one result is returned, use the most
  /// recent AMI.
  final Input<bool>? mostRecent;

  /// Regex string to apply to the AMI list returned
  /// by AWS. This allows more advanced filtering not supported from the AWS API. This
  /// filtering is done locally on what AWS returns, and could have a performance
  /// impact if the result is large. Combine this with other
  /// options to narrow down the list AWS returns.
  ///
  /// > **NOTE:** If more or less than a single match is returned by the search,
  /// this call will fail. Ensure that your search is specific enough to return
  /// a single AMI ID only, or use `most_recent` to choose the most recent one. If
  /// you want to match multiple AMIs, use the `aws.ec2.getAmiIds` data source instead.
  final Input<String>? nameRegex;

  /// List of AMI owners to limit search. Valid values: an AWS account ID, `self` (the current account), or an AWS owner alias (e.g., `amazon`, `aws-marketplace`, `microsoft`).
  final Input<List<String>>? owners;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Any tags assigned to the image.
  /// * `tags.#.key` - Key name of the tag.
  /// * `tags.#.value` - Value of the tag.
  final Input<Map<String, String>>? tags;

  /// (Optional) Base64 representation of the non-volatile UEFI variable store.
  final Input<String>? uefiData;

  GetAmiArgs({
    this.allowUnsafeFilter,
    this.executableUsers,
    this.filters,
    this.includeDeprecated,
    this.mostRecent,
    this.nameRegex,
    this.owners,
    this.region,
    this.tags,
    this.uefiData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowUnsafeFilterValue = allowUnsafeFilter;
    if (allowUnsafeFilterValue != null) {
      map['allowUnsafeFilter'] = allowUnsafeFilterValue;
    }
    final executableUsersValue = executableUsers;
    if (executableUsersValue != null) {
      map['executableUsers'] = executableUsersValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetAmiFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetAmiFilter, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final includeDeprecatedValue = includeDeprecated;
    if (includeDeprecatedValue != null) {
      map['includeDeprecated'] = includeDeprecatedValue;
    }
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final nameRegexValue = nameRegex;
    if (nameRegexValue != null) {
      map['nameRegex'] = nameRegexValue;
    }
    final ownersValue = owners;
    if (ownersValue != null) {
      map['owners'] = ownersValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final uefiDataValue = uefiData;
    if (uefiDataValue != null) {
      map['uefiData'] = uefiDataValue;
    }
    return map;
  }

  factory GetAmiArgs.fromMap(Map<String, dynamic> map) {
    return GetAmiArgs(
      allowUnsafeFilter: Input.asOptionalInput<bool>(map['allowUnsafeFilter']),
      executableUsers:
          Input.asOptionalInput<List<String>>(map['executableUsers']),
      filters: Input.asOptionalInput<List<GetAmiFilter>>(map['filters']),
      includeDeprecated: Input.asOptionalInput<bool>(map['includeDeprecated']),
      mostRecent: Input.asOptionalInput<bool>(map['mostRecent']),
      nameRegex: Input.asOptionalInput<String>(map['nameRegex']),
      owners: Input.asOptionalInput<List<String>>(map['owners']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      uefiData: Input.asOptionalInput<String>(map['uefiData']),
    );
  }
}
