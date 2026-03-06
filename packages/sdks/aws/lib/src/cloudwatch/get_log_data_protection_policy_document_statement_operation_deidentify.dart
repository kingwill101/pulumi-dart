// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLogDataProtectionPolicyDocumentStatementOperationDeidentify {
  /// An empty object that configures masking.
  final pulumi.Input<Map<String, dynamic>> maskConfig;

  /// Creates a new [GetLogDataProtectionPolicyDocumentStatementOperationDeidentify].
  /// [maskConfig] An empty object that configures masking.
  const GetLogDataProtectionPolicyDocumentStatementOperationDeidentify({
    required this.maskConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maskConfig': maskConfig,
    };
  }

  factory GetLogDataProtectionPolicyDocumentStatementOperationDeidentify.fromMap(Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentStatementOperationDeidentify(
      maskConfig: pulumi.Input.fromValue((map['maskConfig']! as Map).cast<String, dynamic>()),
    );
  }
}

