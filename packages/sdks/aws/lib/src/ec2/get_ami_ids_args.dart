// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ami_ids_filter.dart';

/// {@template pulumi_ec2_get_ami_ids_get_ami_ids_args_doc}
/// Arguments for getAmiIds.
/// {@endtemplate}
/// {@macro pulumi_ec2_get_ami_ids_get_ami_ids_args_doc}
class GetAmiIdsArgs {
  /// Limit search to users with *explicit* launch
  /// permission on  the image. Valid items are the numeric account ID or `self`.
  final pulumi.Input<List<String>>? executableUsers;

  /// One or more name/value pairs to filter off of. There
  /// are several valid keys, for a full reference, check out
  /// [describe-images in the AWS CLI reference][1].
  final pulumi.Input<List<GetAmiIdsFilter>>? filters;

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

  /// Creates a new [GetAmiIdsArgs].
  /// [executableUsers] Limit search to users with *explicit* launch
  /// [filters] One or more name/value pairs to filter off of. There
  /// [includeDeprecated] If true, all deprecated AMIs are included in the response.
  /// [nameRegex] Regex string to apply to the AMI list returned
  /// [owners] List of AMI owners to limit search. At least 1 value must be specified. Valid values: an AWS account ID, `self` (the current account), or an AWS owner alias (e.g., `amazon`, `aws-marketplace`, `microsoft`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sortAscending] Used to sort AMIs by creation time.
  GetAmiIdsArgs({
    this.executableUsers,
    this.filters,
    this.includeDeprecated,
    this.nameRegex,
    required this.owners,
    this.region,
    this.sortAscending,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executableUsers': ?executableUsers,
      'filters':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetAmiIdsFilter>,
            List<Map<String, dynamic>>
          >(
            filters,
            (value) =>
                pulumi.Input.encodeList<GetAmiIdsFilter, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'includeDeprecated': ?includeDeprecated,
      'nameRegex': ?nameRegex,
      'owners': owners,
      'region': ?region,
      'sortAscending': ?sortAscending,
    };
  }

  factory GetAmiIdsArgs.fromMap(Map<String, dynamic> map) {
    return GetAmiIdsArgs(
      executableUsers: (() {
        final guardedValue = map['executableUsers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetAmiIdsFilter>(
            guardedValue,
            (value) =>
                GetAmiIdsFilter.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      includeDeprecated: (() {
        final guardedValue = map['includeDeprecated'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      owners: pulumi.Input.fromValue((map['owners'] as List).cast<String>()),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sortAscending: (() {
        final guardedValue = map['sortAscending'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
