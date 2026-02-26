// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getAccountKey.
class GetAccountKeyArgs {
  /// The name of the service account key. This must have format
  /// `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{KEYID}`, where `{ACCOUNT}`
  /// is the email address or unique id of the service account.
  final Input<String> name;

  /// The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format.
  final Input<String>? publicKeyType;

  GetAccountKeyArgs({
    required this.name,
    this.publicKeyType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final publicKeyTypeValue = publicKeyType;
    if (publicKeyTypeValue != null) {
      map['publicKeyType'] = publicKeyTypeValue;
    }
    return map;
  }

  factory GetAccountKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountKeyArgs(
      name: Input.asInput<String>(map['name']),
      publicKeyType: Input.asOptionalInput<String>(map['publicKeyType']),
    );
  }
}
