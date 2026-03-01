// ignore_for_file: unused_element, unnecessary_cast

import 'azure_file_share_access_tier.dart';
import 'azure_file_share_access_type.dart';

class FileShareProperties {
  /// Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium. Learn more at: https://learn.microsoft.com/en-us/rest/api/storagerp/file-shares/create?tabs=HTTP#shareaccesstier
  final AzureFileShareAccessTier? shareAccessTier;
  /// Specifies how Container Groups can access the Azure file share i.e. all CG will share same Azure file share or going to have exclusive file share.
  final AzureFileShareAccessType? shareAccessType;

  /// Creates a new [FileShareProperties].
  /// [shareAccessTier] Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium. Learn more at: https://learn.microsoft.com/en-us/rest/api/storagerp/file-shares/create?tabs=HTTP#shareaccesstier
  /// [shareAccessType] Specifies how Container Groups can access the Azure file share i.e. all CG will share same Azure file share or going to have exclusive file share.
  FileShareProperties({
    this.shareAccessTier,
    this.shareAccessType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareAccessTier': ?shareAccessTier == null ? null : shareAccessTier!.value,
      'shareAccessType': ?shareAccessType == null ? null : shareAccessType!.value,
    };
  }

  factory FileShareProperties.fromMap(Map<String, dynamic> map) {
    return FileShareProperties(
      shareAccessTier: map['shareAccessTier'] == null ? null : AzureFileShareAccessTier.fromValue(map['shareAccessTier'] as String),
      shareAccessType: map['shareAccessType'] == null ? null : AzureFileShareAccessType.fromValue(map['shareAccessType'] as String),
    );
  }
}

