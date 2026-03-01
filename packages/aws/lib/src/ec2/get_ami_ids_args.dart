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
    List<String>? executableUsers,
    List<GetAmiIdsFilter>? filters,
    bool? includeDeprecated,
    String? nameRegex,
    required List<String> owners,
    String? region,
    bool? sortAscending,
  }) : executableUsers = pulumi.Input.asOptionalInput<List<String>>(
         executableUsers,
       ),
       filters = pulumi.Input.asOptionalInput<List<GetAmiIdsFilter>>(filters),
       includeDeprecated = pulumi.Input.asOptionalInput<bool>(
         includeDeprecated,
       ),
       nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
       owners = pulumi.Input.asInput<List<String>>(owners),
       region = pulumi.Input.asOptionalInput<String>(region),
       sortAscending = pulumi.Input.asOptionalInput<bool>(sortAscending);

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
      executableUsers: map['executableUsers'] == null
          ? null
          : (map['executableUsers'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetAmiIdsFilter>(
              map['filters'],
              (value) => GetAmiIdsFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      includeDeprecated: map['includeDeprecated'] == null
          ? null
          : map['includeDeprecated'] as bool,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      owners: (map['owners'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      sortAscending: map['sortAscending'] == null
          ? null
          : map['sortAscending'] as bool,
    );
  }
}
