// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_ami_ids_filter/get_ami_ids_filter_ec2.dart';

/// Arguments for getAmiIds.
class GetAmiIdsEc2Args {
  /// Limit search to users with *explicit* launch
  /// permission on  the image. Valid items are the numeric account ID or `self`.
  final pulumi.Input<List<String>>? executableUsers;

  /// One or more name/value pairs to filter off of. There
  /// are several valid keys, for a full reference, check out
  /// [describe-images in the AWS CLI reference][1].
  final pulumi.Input<List<GetAmiIdsFilterEc2>>? filters;

  /// If true, all deprecated AMIs are included in the response.
  /// If false, no deprecated AMIs are included in the response. If no value is specified, the default value is `false`.
  final pulumi.Input<bool>? includeDeprecated;

  /// Regex string to apply to the AMI list returned
  /// by AWS. This allows more advanced filtering not supported from the AWS API.
  /// This filtering is done locally on what AWS returns, and could have a performance
  /// impact if the result is large. Combine this with other
  /// options to narrow down the list AWS returns.
  final pulumi.Input<String>? nameRegex;

  /// List of AMI owners to limit search. At least 1 value must be specified. Valid values: an AWS account ID, `self` (the current account), or an AWS owner alias (e.g., `amazon`, `aws-marketplace`, `microsoft`).
  final pulumi.Input<List<String>> owners;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Used to sort AMIs by creation time.
  /// If no value is specified, the default value is `false`.
  final pulumi.Input<bool>? sortAscending;

  GetAmiIdsEc2Args({
    this.executableUsers,
    this.filters,
    this.includeDeprecated,
    this.nameRegex,
    required this.owners,
    this.region,
    this.sortAscending,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final executableUsersValue = executableUsers;
    if (executableUsersValue != null) {
      map['executableUsers'] = executableUsersValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetAmiIdsFilterEc2>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              pulumi.Input.encodeList<GetAmiIdsFilterEc2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final includeDeprecatedValue = includeDeprecated;
    if (includeDeprecatedValue != null) {
      map['includeDeprecated'] = includeDeprecatedValue;
    }
    final nameRegexValue = nameRegex;
    if (nameRegexValue != null) {
      map['nameRegex'] = nameRegexValue;
    }
    map['owners'] = owners;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sortAscendingValue = sortAscending;
    if (sortAscendingValue != null) {
      map['sortAscending'] = sortAscendingValue;
    }
    return map;
  }

  factory GetAmiIdsEc2Args.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsEc2Args(
      executableUsers:
          pulumi.Input.asOptionalInput<List<String>>(map['executableUsers']),
      filters: pulumi.Input.asOptionalInput<List<GetAmiIdsFilterEc2>>(
          map['filters']),
      includeDeprecated:
          pulumi.Input.asOptionalInput<bool>(map['includeDeprecated']),
      nameRegex: pulumi.Input.asOptionalInput<String>(map['nameRegex']),
      owners: pulumi.Input.asInput<List<String>>(map['owners']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sortAscending: pulumi.Input.asOptionalInput<bool>(map['sortAscending']),
    );
  }
}
