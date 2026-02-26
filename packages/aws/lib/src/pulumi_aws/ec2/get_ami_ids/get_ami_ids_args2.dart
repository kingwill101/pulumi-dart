// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_ami_ids_filter/get_ami_ids_filter2.dart';

/// Arguments for getAmiIds.
class GetAmiIdsArgs2 {
  /// Limit search to users with *explicit* launch
  /// permission on  the image. Valid items are the numeric account ID or <span pulumi-lang-nodejs="`self`" pulumi-lang-dotnet="`Self`" pulumi-lang-go="`self`" pulumi-lang-python="`self`" pulumi-lang-yaml="`self`" pulumi-lang-java="`self`">`self`</span>.
  final Input<List<String>>? executableUsers;

  /// One or more name/value pairs to filter off of. There
  /// are several valid keys, for a full reference, check out
  /// [describe-images in the AWS CLI reference][1].
  final Input<List<GetAmiIdsFilter2>>? filters;

  /// If true, all deprecated AMIs are included in the response.
  /// If false, no deprecated AMIs are included in the response. If no value is specified, the default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? includeDeprecated;

  /// Regex string to apply to the AMI list returned
  /// by AWS. This allows more advanced filtering not supported from the AWS API.
  /// This filtering is done locally on what AWS returns, and could have a performance
  /// impact if the result is large. Combine this with other
  /// options to narrow down the list AWS returns.
  final Input<String>? nameRegex;

  /// List of AMI owners to limit search. At least 1 value must be specified. Valid values: an AWS account ID, <span pulumi-lang-nodejs="`self`" pulumi-lang-dotnet="`Self`" pulumi-lang-go="`self`" pulumi-lang-python="`self`" pulumi-lang-yaml="`self`" pulumi-lang-java="`self`">`self`</span> (the current account), or an AWS owner alias (e.g., <span pulumi-lang-nodejs="`amazon`" pulumi-lang-dotnet="`Amazon`" pulumi-lang-go="`amazon`" pulumi-lang-python="`amazon`" pulumi-lang-yaml="`amazon`" pulumi-lang-java="`amazon`">`amazon`</span>, `aws-marketplace`, <span pulumi-lang-nodejs="`microsoft`" pulumi-lang-dotnet="`Microsoft`" pulumi-lang-go="`microsoft`" pulumi-lang-python="`microsoft`" pulumi-lang-yaml="`microsoft`" pulumi-lang-java="`microsoft`">`microsoft`</span>).
  final Input<List<String>> owners;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Used to sort AMIs by creation time.
  /// If no value is specified, the default value is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? sortAscending;

  GetAmiIdsArgs2({
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
      map['filters'] = Input.mapOptionalInputValue<List<GetAmiIdsFilter2>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetAmiIdsFilter2, Map<String, dynamic>>(
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

  factory GetAmiIdsArgs2.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsArgs2(
      executableUsers:
          Input.asOptionalInput<List<String>>(map['executableUsers']),
      filters: Input.asOptionalInput<List<GetAmiIdsFilter2>>(map['filters']),
      includeDeprecated: Input.asOptionalInput<bool>(map['includeDeprecated']),
      nameRegex: Input.asOptionalInput<String>(map['nameRegex']),
      owners: Input.asInput<List<String>>(map['owners']),
      region: Input.asOptionalInput<String>(map['region']),
      sortAscending: Input.asOptionalInput<bool>(map['sortAscending']),
    );
  }
}
