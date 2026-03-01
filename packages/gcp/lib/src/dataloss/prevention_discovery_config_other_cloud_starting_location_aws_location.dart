// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation {
  /// The AWS account ID that this discovery config applies to. Within an organization, you can find the AWS account ID inside an AWS account ARN. Example: arn:<partition>:organizations::<management-account-id>:account/<organization-id>/<account-id>
  final String? accountId;

  /// All AWS assets stored in Asset Inventory that didn't match other AWS discovery configs.
  final bool? allAssetInventoryAssets;

  /// Creates a new [PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation].
  /// [accountId] The AWS account ID that this discovery config applies to. Within an organization, you can find the AWS account ID inside an AWS account ARN. Example: arn:<partition>:organizations::<management-account-id>:account/<organization-id>/<account-id>
  /// [allAssetInventoryAssets] All AWS assets stored in Asset Inventory that didn't match other AWS discovery configs.
  PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation({
    this.accountId,
    this.allAssetInventoryAssets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allAssetInventoryAssets': ?allAssetInventoryAssets,
    };
  }

  factory PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigOtherCloudStartingLocationAwsLocation(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      allAssetInventoryAssets: map['allAssetInventoryAssets'] == null
          ? null
          : map['allAssetInventoryAssets'] as bool,
    );
  }
}
