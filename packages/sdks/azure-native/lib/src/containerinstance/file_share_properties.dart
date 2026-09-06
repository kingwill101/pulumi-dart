// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_share_access_tier.dart';
import 'azure_file_share_access_type.dart';

class FileShareProperties {
  /// Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium. Learn more at: https://learn.microsoft.com/en-us/rest/api/storagerp/file-shares/create?tabs=HTTP#shareaccesstier
  final pulumi.Input<AzureFileShareAccessTier?>? shareAccessTier;
  /// Specifies how Container Groups can access the Azure file share i.e. all CG will share same Azure file share or going to have exclusive file share.
  final pulumi.Input<AzureFileShareAccessType?>? shareAccessType;

  /// Creates a new [FileShareProperties].
  /// [shareAccessTier] Access tier for specific share. GpV2 account can choose between TransactionOptimized (default), Hot, and Cool. FileStorage account can choose Premium. Learn more at: https://learn.microsoft.com/en-us/rest/api/storagerp/file-shares/create?tabs=HTTP#shareaccesstier
  /// [shareAccessType] Specifies how Container Groups can access the Azure file share i.e. all CG will share same Azure file share or going to have exclusive file share.
  FileShareProperties({
    pulumi.Input<AzureFileShareAccessTier?>? shareAccessTier,
    this.shareAccessType,
  }) : shareAccessTier = shareAccessTier ?? pulumi.Input.fromValue(AzureFileShareAccessTier.fromValue('TransactionOptimized'));

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'shareAccessTier': ?pulumi.Input.mapOptionalInputValue<AzureFileShareAccessTier, String>(shareAccessTier, (value) => value.wireValue),
      'shareAccessType': ?pulumi.Input.mapOptionalInputValue<AzureFileShareAccessType, String>(shareAccessType, (value) => value.wireValue),
    };
  }

  factory FileShareProperties.fromMap(Map<String, dynamic> map) {
    return FileShareProperties(
      shareAccessTier: (() { final guardedValue = map['shareAccessTier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureFileShareAccessTier.fromValue(guardedValue as String)); })(),
      shareAccessType: (() { final guardedValue = map['shareAccessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureFileShareAccessType.fromValue(guardedValue as String)); })(),
    );
  }
}
