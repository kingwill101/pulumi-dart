// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ami_filter.dart';

/// {@template pulumi_ec2_get_ami_get_ami_args_doc}
/// Arguments for getAmi.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_ami_get_ami_args_doc}
class GetAmiArgs {
  /// If true, allow unsafe filter values. With unsafe
  /// filters and `most_recent` set to `true`, a third party may introduce a new image which
  /// will be returned by this data source. Consider filtering by owner or image ID rather
  /// than setting this argument.
  final pulumi.Input<bool>? allowUnsafeFilter;
  /// Limit search to users with *explicit* launch permission on
  /// the image. Valid items are the numeric account ID or `self`.
  final pulumi.Input<List<String>>? executableUsers;
  /// One or more name/value pairs to filter off of. There are
  /// several valid keys, for a full reference, check out
  /// [describe-images in the AWS CLI reference][1].
  final pulumi.Input<List<GetAmiFilter>>? filters;
  /// If true, all deprecated AMIs are included in the response. If false, no deprecated AMIs are included in the response. If no value is specified, the default value is false.
  final pulumi.Input<bool>? includeDeprecated;
  /// If more than one result is returned, use the most
  /// recent AMI.
  final pulumi.Input<bool>? mostRecent;
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
  final pulumi.Input<String>? nameRegex;
  /// List of AMI owners to limit search. Valid values: an AWS account ID, `self` (the current account), or an AWS owner alias (e.g., `amazon`, `aws-marketplace`, `microsoft`).
  final pulumi.Input<List<String>>? owners;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Any tags assigned to the image.
  /// * `tags.#.key` - Key name of the tag.
  /// * `tags.#.value` - Value of the tag.
  final pulumi.Input<Map<String, String>>? tags;
  /// (Optional) Base64 representation of the non-volatile UEFI variable store.
  final pulumi.Input<String>? uefiData;

  /// Creates a new [GetAmiArgs].
  /// [allowUnsafeFilter] If true, allow unsafe filter values. With unsafe
  /// [executableUsers] Limit search to users with *explicit* launch permission on
  /// [filters] One or more name/value pairs to filter off of. There are
  /// [includeDeprecated] If true, all deprecated AMIs are included in the response. If false, no deprecated AMIs are included in the response. If no value is specified, the default value is false.
  /// [mostRecent] If more than one result is returned, use the most
  /// [nameRegex] Regex string to apply to the AMI list returned
  /// [owners] List of AMI owners to limit search. Valid values: an AWS account ID, `self` (the current account), or an AWS owner alias (e.g., `amazon`, `aws-marketplace`, `microsoft`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Any tags assigned to the image.
  /// [uefiData] (Optional) Base64 representation of the non-volatile UEFI variable store.
  GetAmiArgs({
    bool? allowUnsafeFilter,
    List<String>? executableUsers,
    List<GetAmiFilter>? filters,
    bool? includeDeprecated,
    bool? mostRecent,
    String? nameRegex,
    List<String>? owners,
    String? region,
    Map<String, String>? tags,
    String? uefiData,
  }) :
      allowUnsafeFilter = pulumi.Input.asOptionalInput<bool>(allowUnsafeFilter),
      executableUsers = pulumi.Input.asOptionalInput<List<String>>(executableUsers),
      filters = pulumi.Input.asOptionalInput<List<GetAmiFilter>>(filters),
      includeDeprecated = pulumi.Input.asOptionalInput<bool>(includeDeprecated),
      mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      owners = pulumi.Input.asOptionalInput<List<String>>(owners),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      uefiData = pulumi.Input.asOptionalInput<String>(uefiData);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowUnsafeFilter': ?allowUnsafeFilter,
      'executableUsers': ?executableUsers,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetAmiFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetAmiFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includeDeprecated': ?includeDeprecated,
      'mostRecent': ?mostRecent,
      'nameRegex': ?nameRegex,
      'owners': ?owners,
      'region': ?region,
      'tags': ?tags,
      'uefiData': ?uefiData,
    };
  }

  factory GetAmiArgs.fromMap(Map<String, dynamic> map) {
    return GetAmiArgs(
      allowUnsafeFilter: map['allowUnsafeFilter'] == null ? null : map['allowUnsafeFilter'] as bool,
      executableUsers: map['executableUsers'] == null ? null : (map['executableUsers'] as List).cast<String>(),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetAmiFilter>(map['filters'], (value) => GetAmiFilter.fromMap((value as Map).cast<String, dynamic>())),
      includeDeprecated: map['includeDeprecated'] == null ? null : map['includeDeprecated'] as bool,
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      owners: map['owners'] == null ? null : (map['owners'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      uefiData: map['uefiData'] == null ? null : map['uefiData'] as String,
    );
  }
}

