// ignore_for_file: unused_element, unnecessary_cast

class ProvisionedProductStackSetProvisioningPreferences {
  /// One or more AWS accounts that will have access to the provisioned product. The AWS accounts specified should be within the list of accounts in the STACKSET constraint. To get the list of accounts in the STACKSET constraint, use the <span pulumi-lang-nodejs="`awsServicecatalogProvisioningParameters`" pulumi-lang-dotnet="`AwsServicecatalogProvisioningParameters`" pulumi-lang-go="`awsServicecatalogProvisioningParameters`" pulumi-lang-python="`aws_servicecatalog_provisioning_parameters`" pulumi-lang-yaml="`awsServicecatalogProvisioningParameters`" pulumi-lang-java="`awsServicecatalogProvisioningParameters`">`aws_servicecatalog_provisioning_parameters`</span> data source. If no values are specified, the default value is all accounts from the STACKSET constraint.
  final List<String>? accounts;

  /// Number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions. You must specify either <span pulumi-lang-nodejs="`failureToleranceCount`" pulumi-lang-dotnet="`FailureToleranceCount`" pulumi-lang-go="`failureToleranceCount`" pulumi-lang-python="`failure_tolerance_count`" pulumi-lang-yaml="`failureToleranceCount`" pulumi-lang-java="`failureToleranceCount`">`failure_tolerance_count`</span> or <span pulumi-lang-nodejs="`failureTolerancePercentage`" pulumi-lang-dotnet="`FailureTolerancePercentage`" pulumi-lang-go="`failureTolerancePercentage`" pulumi-lang-python="`failure_tolerance_percentage`" pulumi-lang-yaml="`failureTolerancePercentage`" pulumi-lang-java="`failureTolerancePercentage`">`failure_tolerance_percentage`</span>, but not both. The default value is 0 if no value is specified.
  final int? failureToleranceCount;

  /// Percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions. When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. You must specify either <span pulumi-lang-nodejs="`failureToleranceCount`" pulumi-lang-dotnet="`FailureToleranceCount`" pulumi-lang-go="`failureToleranceCount`" pulumi-lang-python="`failure_tolerance_count`" pulumi-lang-yaml="`failureToleranceCount`" pulumi-lang-java="`failureToleranceCount`">`failure_tolerance_count`</span> or <span pulumi-lang-nodejs="`failureTolerancePercentage`" pulumi-lang-dotnet="`FailureTolerancePercentage`" pulumi-lang-go="`failureTolerancePercentage`" pulumi-lang-python="`failure_tolerance_percentage`" pulumi-lang-yaml="`failureTolerancePercentage`" pulumi-lang-java="`failureTolerancePercentage`">`failure_tolerance_percentage`</span>, but not both.
  final int? failureTolerancePercentage;

  /// Maximum number of accounts in which to perform this operation at one time. This is dependent on the value of <span pulumi-lang-nodejs="`failureToleranceCount`" pulumi-lang-dotnet="`FailureToleranceCount`" pulumi-lang-go="`failureToleranceCount`" pulumi-lang-python="`failure_tolerance_count`" pulumi-lang-yaml="`failureToleranceCount`" pulumi-lang-java="`failureToleranceCount`">`failure_tolerance_count`</span>. <span pulumi-lang-nodejs="`maxConcurrencyCount`" pulumi-lang-dotnet="`MaxConcurrencyCount`" pulumi-lang-go="`maxConcurrencyCount`" pulumi-lang-python="`max_concurrency_count`" pulumi-lang-yaml="`maxConcurrencyCount`" pulumi-lang-java="`maxConcurrencyCount`">`max_concurrency_count`</span> is at most one more than the <span pulumi-lang-nodejs="`failureToleranceCount`" pulumi-lang-dotnet="`FailureToleranceCount`" pulumi-lang-go="`failureToleranceCount`" pulumi-lang-python="`failure_tolerance_count`" pulumi-lang-yaml="`failureToleranceCount`" pulumi-lang-java="`failureToleranceCount`">`failure_tolerance_count`</span>. Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling. You must specify either <span pulumi-lang-nodejs="`maxConcurrencyCount`" pulumi-lang-dotnet="`MaxConcurrencyCount`" pulumi-lang-go="`maxConcurrencyCount`" pulumi-lang-python="`max_concurrency_count`" pulumi-lang-yaml="`maxConcurrencyCount`" pulumi-lang-java="`maxConcurrencyCount`">`max_concurrency_count`</span> or <span pulumi-lang-nodejs="`maxConcurrencyPercentage`" pulumi-lang-dotnet="`MaxConcurrencyPercentage`" pulumi-lang-go="`maxConcurrencyPercentage`" pulumi-lang-python="`max_concurrency_percentage`" pulumi-lang-yaml="`maxConcurrencyPercentage`" pulumi-lang-java="`maxConcurrencyPercentage`">`max_concurrency_percentage`</span>, but not both.
  final int? maxConcurrencyCount;

  /// Maximum percentage of accounts in which to perform this operation at one time. When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, AWS Service Catalog sets the number as 1 instead. Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling. You must specify either <span pulumi-lang-nodejs="`maxConcurrencyCount`" pulumi-lang-dotnet="`MaxConcurrencyCount`" pulumi-lang-go="`maxConcurrencyCount`" pulumi-lang-python="`max_concurrency_count`" pulumi-lang-yaml="`maxConcurrencyCount`" pulumi-lang-java="`maxConcurrencyCount`">`max_concurrency_count`</span> or <span pulumi-lang-nodejs="`maxConcurrencyPercentage`" pulumi-lang-dotnet="`MaxConcurrencyPercentage`" pulumi-lang-go="`maxConcurrencyPercentage`" pulumi-lang-python="`max_concurrency_percentage`" pulumi-lang-yaml="`maxConcurrencyPercentage`" pulumi-lang-java="`maxConcurrencyPercentage`">`max_concurrency_percentage`</span>, but not both.
  final int? maxConcurrencyPercentage;

  /// One or more AWS Regions where the provisioned product will be available. The specified regions should be within the list of regions from the STACKSET constraint. To get the list of regions in the STACKSET constraint, use the <span pulumi-lang-nodejs="`awsServicecatalogProvisioningParameters`" pulumi-lang-dotnet="`AwsServicecatalogProvisioningParameters`" pulumi-lang-go="`awsServicecatalogProvisioningParameters`" pulumi-lang-python="`aws_servicecatalog_provisioning_parameters`" pulumi-lang-yaml="`awsServicecatalogProvisioningParameters`" pulumi-lang-java="`awsServicecatalogProvisioningParameters`">`aws_servicecatalog_provisioning_parameters`</span> data source. If no values are specified, the default value is all regions from the STACKSET constraint.
  final List<String>? regions;

  ProvisionedProductStackSetProvisioningPreferences({
    this.accounts,
    this.failureToleranceCount,
    this.failureTolerancePercentage,
    this.maxConcurrencyCount,
    this.maxConcurrencyPercentage,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountsValue = accounts;
    if (accountsValue != null) {
      map['accounts'] = accountsValue;
    }
    final failureToleranceCountValue = failureToleranceCount;
    if (failureToleranceCountValue != null) {
      map['failureToleranceCount'] = failureToleranceCountValue;
    }
    final failureTolerancePercentageValue = failureTolerancePercentage;
    if (failureTolerancePercentageValue != null) {
      map['failureTolerancePercentage'] = failureTolerancePercentageValue;
    }
    final maxConcurrencyCountValue = maxConcurrencyCount;
    if (maxConcurrencyCountValue != null) {
      map['maxConcurrencyCount'] = maxConcurrencyCountValue;
    }
    final maxConcurrencyPercentageValue = maxConcurrencyPercentage;
    if (maxConcurrencyPercentageValue != null) {
      map['maxConcurrencyPercentage'] = maxConcurrencyPercentageValue;
    }
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = regionsValue;
    }
    return map;
  }

  factory ProvisionedProductStackSetProvisioningPreferences.fromMap(
      Map<String, dynamic> map) {
    return ProvisionedProductStackSetProvisioningPreferences(
      accounts: map['accounts'] == null
          ? null
          : (map['accounts'] as List).cast<String>(),
      failureToleranceCount: map['failureToleranceCount'] == null
          ? null
          : map['failureToleranceCount'] as int,
      failureTolerancePercentage: map['failureTolerancePercentage'] == null
          ? null
          : map['failureTolerancePercentage'] as int,
      maxConcurrencyCount: map['maxConcurrencyCount'] == null
          ? null
          : map['maxConcurrencyCount'] as int,
      maxConcurrencyPercentage: map['maxConcurrencyPercentage'] == null
          ? null
          : map['maxConcurrencyPercentage'] as int,
      regions: map['regions'] == null
          ? null
          : (map['regions'] as List).cast<String>(),
    );
  }
}
