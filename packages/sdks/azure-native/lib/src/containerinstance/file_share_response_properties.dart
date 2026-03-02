// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileShareResponseProperties {
  /// Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium. Learn more at: https://learn.microsoft.com/en-us/rest/api/storagerp/file-shares/create?tabs=HTTP#shareaccesstier
  final pulumi.Input<String>? shareAccessTier;
  /// Specifies how Container Groups can access the Azure file share i.e. all CG will share same Azure file share or going to have exclusive file share.
  final pulumi.Input<String>? shareAccessType;

  /// Creates a new [FileShareResponseProperties].
  /// [shareAccessTier] Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium. Learn more at: https://learn.microsoft.com/en-us/rest/api/storagerp/file-shares/create?tabs=HTTP#shareaccesstier
  /// [shareAccessType] Specifies how Container Groups can access the Azure file share i.e. all CG will share same Azure file share or going to have exclusive file share.
  FileShareResponseProperties({
    this.shareAccessTier,
    this.shareAccessType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareAccessTier': ?shareAccessTier,
      'shareAccessType': ?shareAccessType,
    };
  }

  factory FileShareResponseProperties.fromMap(Map<String, dynamic> map) {
    return FileShareResponseProperties(
      shareAccessTier: map['shareAccessTier'] == null ? null : (map['shareAccessTier']! as String).input(),
      shareAccessType: map['shareAccessType'] == null ? null : (map['shareAccessType']! as String).input(),
    );
  }
}

