// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_logins_filter.dart';
import 'get_account_logins_login.dart';

/// Result data returned by getAccountLogins.
class GetAccountLoginsResult {
  final List<GetAccountLoginsFilter>? filters;
  /// The unique ID of this login object.
  final String id;
  final List<GetAccountLoginsLogin> logins;

  /// Creates a new [GetAccountLoginsResult].
  /// [filters] Optional.
  /// [id] The unique ID of this login object.
  /// [logins] Required.
  GetAccountLoginsResult({
    this.filters,
    required this.id,
    required this.logins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetAccountLoginsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'logins': pulumi.Input.encodeList<GetAccountLoginsLogin, Map<String, dynamic>>(logins, (value) => value.toMap()),
    };
  }

  factory GetAccountLoginsResult.fromMap(Map<String, dynamic> map) {
    return GetAccountLoginsResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetAccountLoginsFilter>(map['filters'], (value) => GetAccountLoginsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      logins: pulumi.Input.decodeList<GetAccountLoginsLogin>(map['logins'], (value) => GetAccountLoginsLogin.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

