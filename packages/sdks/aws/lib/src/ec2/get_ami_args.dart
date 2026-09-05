// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ami_filter.dart';

/// {@template pulumi_ec2_get_ami_get_ami_args_doc}
/// Arguments for getAmi.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_ami_get_ami_args_doc}
class GetAmiArgs {
  /// If true, allow unsafe filter values. With unsafe filters and `mostRecent` set to `true`, a third party may introduce a new image which will be returned by this data source. Consider filtering by owner or image ID rather than setting this argument.
  final pulumi.Input<bool?>? allowUnsafeFilter;
  /// Limit search to users with *explicit* launch permission on the image. Valid items are the numeric account ID or `self`.
  final pulumi.Input<List<String>?>? executableUsers;
  /// One or more name/value pairs to filter off of. There are several valid keys, for a full reference, check out [describe-images in the AWS CLI reference](http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html). See `filter` below.
  final pulumi.Input<List<GetAmiFilter>?>? filters;
  /// If true, all deprecated AMIs are included in the response. If false, no deprecated AMIs are included in the response. If no value is specified, the default value is false.
  final pulumi.Input<bool?>? includeDeprecated;
  /// If more than one result is returned, use the most recent AMI.
  final pulumi.Input<bool?>? mostRecent;
  /// Regex string to apply to the AMI list returned by AWS. This allows more advanced filtering not supported from the AWS API. This filtering is done locally on what AWS returns, and could have a performance impact if the result is large. Combine this with other options to narrow down the list AWS returns.
  final pulumi.Input<String?>? nameRegex;
  /// List of AMI owners to limit search. Valid values: an AWS account ID, `self` (the current account), or an AWS owner alias (e.g., `amazon`, `aws-marketplace`, `microsoft`).
  final pulumi.Input<List<String>?>? owners;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Any tags assigned to the image.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Base64 representation of the non-volatile UEFI variable store.
  ///
  /// &gt; **NOTE:** If more or less than a single match is returned by the search, this call will fail. Ensure that your search is specific enough to return a single AMI ID only, or use `mostRecent` to choose the most recent one. If you want to match multiple AMIs, use the `aws.ec2.getAmiIds` data source instead.
  final pulumi.Input<String?>? uefiData;

  /// Creates a new [GetAmiArgs].
  /// [allowUnsafeFilter] If true, allow unsafe filter values. With unsafe filters and `mostRecent` set to `true`, a third party may introduce a new image which will be returned by this data source. Consider filtering by owner or image ID rather than setting this argument.
  /// [executableUsers] Limit search to users with *explicit* launch permission on the image. Valid items are the numeric account ID or `self`.
  /// [filters] One or more name/value pairs to filter off of. There are several valid keys, for a full reference, check out [describe-images in the AWS CLI reference](http://docs.aws.amazon.com/cli/latest/reference/ec2/describe-images.html). See `filter` below.
  /// [includeDeprecated] If true, all deprecated AMIs are included in the response. If false, no deprecated AMIs are included in the response. If no value is specified, the default value is false.
  /// [mostRecent] If more than one result is returned, use the most recent AMI.
  /// [nameRegex] Regex string to apply to the AMI list returned by AWS. This allows more advanced filtering not supported from the AWS API. This filtering is done locally on what AWS returns, and could have a performance impact if the result is large. Combine this with other options to narrow down the list AWS returns.
  /// [owners] List of AMI owners to limit search. Valid values: an AWS account ID, `self` (the current account), or an AWS owner alias (e.g., `amazon`, `aws-marketplace`, `microsoft`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Any tags assigned to the image.
  /// [uefiData] Base64 representation of the non-volatile UEFI variable store.
  const GetAmiArgs({
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
      allowUnsafeFilter: (() { final guardedValue = map['allowUnsafeFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      executableUsers: (() { final guardedValue = map['executableUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetAmiFilter>(guardedValue, (value) => GetAmiFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includeDeprecated: (() { final guardedValue = map['includeDeprecated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uefiData: (() { final guardedValue = map['uefiData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
