// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_saccount/get_saccount.dart';

/// Result data returned by getS.
class GetSServiceaccountResult {
  /// A list of all retrieved service accounts. Structure is defined below.
  final List<GetSAccount> accounts;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? prefix;
  final String? project;
  final String? regex;

  GetSServiceaccountResult({
    required this.accounts,
    required this.id,
    this.prefix,
    this.project,
    this.regex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accounts'] =
        pulumi.Input.encodeList<GetSAccount, Map<String, dynamic>>(
            accounts, (value) => value.toMap());
    map['id'] = id;
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regexValue = regex;
    if (regexValue != null) {
      map['regex'] = regexValue;
    }
    return map;
  }

  factory GetSServiceaccountResult.fromMap(Map<String, dynamic> map) {
    return GetSServiceaccountResult(
      accounts: pulumi.Input.decodeList<GetSAccount>(
          map['accounts'],
          (value) =>
              GetSAccount.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      regex: map['regex'] == null ? null : map['regex'] as String,
    );
  }
}
