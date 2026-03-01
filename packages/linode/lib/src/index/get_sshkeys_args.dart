// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sshkeys_filter.dart';

/// {@template pulumi_index_get_sshkeys_get_sshkeys_args_doc}
/// Arguments for getSshkeys.
/// {@endtemplate}
/// {@macro pulumi_index_get_sshkeys_get_sshkeys_args_doc}
class GetSshkeysArgs {
  final pulumi.Input<List<GetSshkeysFilter>>? filters;
  /// The order in which results should be returned. (`asc`, `desc`; default `asc`)
  final pulumi.Input<String>? order;
  /// The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  final pulumi.Input<String>? orderBy;

  /// Creates a new [GetSshkeysArgs].
  /// [filters] Optional.
  /// [order] The order in which results should be returned. (`asc`, `desc`; default `asc`)
  /// [orderBy] The attribute to order the results by. See the Filterable Fields section for a list of valid fields.
  GetSshkeysArgs({
    List<GetSshkeysFilter>? filters,
    String? order,
    String? orderBy,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetSshkeysFilter>>(filters),
      order = pulumi.Input.asOptionalInput<String>(order),
      orderBy = pulumi.Input.asOptionalInput<String>(orderBy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetSshkeysFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetSshkeysFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': ?order,
      'orderBy': ?orderBy,
    };
  }

  factory GetSshkeysArgs.fromMap(Map<String, dynamic> map) {
    return GetSshkeysArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetSshkeysFilter>(map['filters'], (value) => GetSshkeysFilter.fromMap((value as Map).cast<String, dynamic>())),
      order: map['order'] == null ? null : map['order'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
    );
  }
}

