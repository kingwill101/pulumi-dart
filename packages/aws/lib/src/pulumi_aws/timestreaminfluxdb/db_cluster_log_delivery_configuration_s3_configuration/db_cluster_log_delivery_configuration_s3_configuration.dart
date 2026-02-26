// ignore_for_file: unused_element, unnecessary_cast

class DbClusterLogDeliveryConfigurationS3Configuration {
  /// Name of the S3 bucket to deliver logs to.
  final String bucketName;

  /// Indicates whether log delivery to the S3 bucket is enabled.
  ///
  /// **Note**: The following arguments do updates in-place: <span pulumi-lang-nodejs="`dbParameterGroupIdentifier`" pulumi-lang-dotnet="`DbParameterGroupIdentifier`" pulumi-lang-go="`dbParameterGroupIdentifier`" pulumi-lang-python="`db_parameter_group_identifier`" pulumi-lang-yaml="`dbParameterGroupIdentifier`" pulumi-lang-java="`dbParameterGroupIdentifier`">`db_parameter_group_identifier`</span>, <span pulumi-lang-nodejs="`logDeliveryConfiguration`" pulumi-lang-dotnet="`LogDeliveryConfiguration`" pulumi-lang-go="`logDeliveryConfiguration`" pulumi-lang-python="`log_delivery_configuration`" pulumi-lang-yaml="`logDeliveryConfiguration`" pulumi-lang-java="`logDeliveryConfiguration`">`log_delivery_configuration`</span>, <span pulumi-lang-nodejs="`port`" pulumi-lang-dotnet="`Port`" pulumi-lang-go="`port`" pulumi-lang-python="`port`" pulumi-lang-yaml="`port`" pulumi-lang-java="`port`">`port`</span>, <span pulumi-lang-nodejs="`dbInstanceType`" pulumi-lang-dotnet="`DbInstanceType`" pulumi-lang-go="`dbInstanceType`" pulumi-lang-python="`db_instance_type`" pulumi-lang-yaml="`dbInstanceType`" pulumi-lang-java="`dbInstanceType`">`db_instance_type`</span>, <span pulumi-lang-nodejs="`failoverMode`" pulumi-lang-dotnet="`FailoverMode`" pulumi-lang-go="`failoverMode`" pulumi-lang-python="`failover_mode`" pulumi-lang-yaml="`failoverMode`" pulumi-lang-java="`failoverMode`">`failover_mode`</span>, and <span pulumi-lang-nodejs="`tags`" pulumi-lang-dotnet="`Tags`" pulumi-lang-go="`tags`" pulumi-lang-python="`tags`" pulumi-lang-yaml="`tags`" pulumi-lang-java="`tags`">`tags`</span>. Changes to any other argument after a cluster has been deployed will cause destruction and re-creation of the cluster. Additionally, when <span pulumi-lang-nodejs="`dbParameterGroupIdentifier`" pulumi-lang-dotnet="`DbParameterGroupIdentifier`" pulumi-lang-go="`dbParameterGroupIdentifier`" pulumi-lang-python="`db_parameter_group_identifier`" pulumi-lang-yaml="`dbParameterGroupIdentifier`" pulumi-lang-java="`dbParameterGroupIdentifier`">`db_parameter_group_identifier`</span> is added to a cluster or modified, the cluster will be updated in-place but if <span pulumi-lang-nodejs="`dbParameterGroupIdentifier`" pulumi-lang-dotnet="`DbParameterGroupIdentifier`" pulumi-lang-go="`dbParameterGroupIdentifier`" pulumi-lang-python="`db_parameter_group_identifier`" pulumi-lang-yaml="`dbParameterGroupIdentifier`" pulumi-lang-java="`dbParameterGroupIdentifier`">`db_parameter_group_identifier`</span> is removed from a cluster, the cluster will be destroyed and re-created.
  final bool enabled;

  DbClusterLogDeliveryConfigurationS3Configuration({
    required this.bucketName,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['enabled'] = enabled;
    return map;
  }

  factory DbClusterLogDeliveryConfigurationS3Configuration.fromMap(
      Map<String, dynamic> map) {
    return DbClusterLogDeliveryConfigurationS3Configuration(
      bucketName: map['bucketName'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
