// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../global_secondary_index_key_schema/global_secondary_index_key_schema.dart';
import '../global_secondary_index_on_demand_throughput/global_secondary_index_on_demand_throughput.dart';
import '../global_secondary_index_projection/global_secondary_index_projection.dart';
import '../global_secondary_index_provisioned_throughput/global_secondary_index_provisioned_throughput.dart';
import '../global_secondary_index_timeouts/global_secondary_index_timeouts.dart';
import '../global_secondary_index_warm_throughput/global_secondary_index_warm_throughput.dart';

/// The set of arguments for GlobalSecondaryIndex.
class GlobalSecondaryIndexArgs {
  /// Name of the index.
  final Input<String> indexName;

  /// Set of nested attribute definitions.
  /// At least 1 element defining a `HASH` is required.
  /// All elements with the <span pulumi-lang-nodejs="`keyType`" pulumi-lang-dotnet="`KeyType`" pulumi-lang-go="`keyType`" pulumi-lang-python="`key_type`" pulumi-lang-yaml="`keyType`" pulumi-lang-java="`keyType`">`key_type`</span> of `HASH` must precede elements with <span pulumi-lang-nodejs="`keyType`" pulumi-lang-dotnet="`KeyType`" pulumi-lang-go="`keyType`" pulumi-lang-python="`key_type`" pulumi-lang-yaml="`keyType`" pulumi-lang-java="`keyType`">`key_type`</span> of `RANGE`.
  /// Changing any values in <span pulumi-lang-nodejs="`keySchema`" pulumi-lang-dotnet="`KeySchema`" pulumi-lang-go="`keySchema`" pulumi-lang-python="`key_schema`" pulumi-lang-yaml="`keySchema`" pulumi-lang-java="`keySchema`">`key_schema`</span> will re-create the resource.
  /// See <span pulumi-lang-nodejs="`keySchema`" pulumi-lang-dotnet="`KeySchema`" pulumi-lang-go="`keySchema`" pulumi-lang-python="`key_schema`" pulumi-lang-yaml="`keySchema`" pulumi-lang-java="`keySchema`">`key_schema`</span> below.
  final Input<List<GlobalSecondaryIndexKeySchema>>? keySchemas;

  /// Sets the maximum number of read and write units for the index.
  /// See <span pulumi-lang-nodejs="`onDemandThroughput`" pulumi-lang-dotnet="`OnDemandThroughput`" pulumi-lang-go="`onDemandThroughput`" pulumi-lang-python="`on_demand_throughput`" pulumi-lang-yaml="`onDemandThroughput`" pulumi-lang-java="`onDemandThroughput`">`on_demand_throughput`</span> below.
  /// Only valid if the table's <span pulumi-lang-nodejs="`billingMode`" pulumi-lang-dotnet="`BillingMode`" pulumi-lang-go="`billingMode`" pulumi-lang-python="`billing_mode`" pulumi-lang-yaml="`billingMode`" pulumi-lang-java="`billingMode`">`billing_mode`</span> is `PAY_PER_REQUEST`.
  final Input<GlobalSecondaryIndexOnDemandThroughput>? onDemandThroughput;

  /// Describes which attributes from the table are represented in the index.
  /// See <span pulumi-lang-nodejs="`projection`" pulumi-lang-dotnet="`Projection`" pulumi-lang-go="`projection`" pulumi-lang-python="`projection`" pulumi-lang-yaml="`projection`" pulumi-lang-java="`projection`">`projection`</span> below.
  final Input<GlobalSecondaryIndexProjection>? projection;

  /// Provisioned throughput for the index.
  /// See <span pulumi-lang-nodejs="`provisionedThroughput`" pulumi-lang-dotnet="`ProvisionedThroughput`" pulumi-lang-go="`provisionedThroughput`" pulumi-lang-python="`provisioned_throughput`" pulumi-lang-yaml="`provisionedThroughput`" pulumi-lang-java="`provisionedThroughput`">`provisioned_throughput`</span> below.
  /// Required if the table's <span pulumi-lang-nodejs="`billingMode`" pulumi-lang-dotnet="`BillingMode`" pulumi-lang-go="`billingMode`" pulumi-lang-python="`billing_mode`" pulumi-lang-yaml="`billingMode`" pulumi-lang-java="`billingMode`">`billing_mode`</span> is `PROVISIONED`.
  final Input<GlobalSecondaryIndexProvisionedThroughput>? provisionedThroughput;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the table this index belongs to.
  ///
  /// The following arguments are optional:
  final Input<String> tableName;
  final Input<GlobalSecondaryIndexTimeouts>? timeouts;

  /// Sets the number of warm read and write units for this index.
  /// See <span pulumi-lang-nodejs="`warmThroughput`" pulumi-lang-dotnet="`WarmThroughput`" pulumi-lang-go="`warmThroughput`" pulumi-lang-python="`warm_throughput`" pulumi-lang-yaml="`warmThroughput`" pulumi-lang-java="`warmThroughput`">`warm_throughput`</span> below.
  final Input<GlobalSecondaryIndexWarmThroughput>? warmThroughput;

  GlobalSecondaryIndexArgs({
    required this.indexName,
    this.keySchemas,
    this.onDemandThroughput,
    this.projection,
    this.provisionedThroughput,
    this.region,
    required this.tableName,
    this.timeouts,
    this.warmThroughput,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['indexName'] = indexName;
    final keySchemasValue = keySchemas;
    if (keySchemasValue != null) {
      map['keySchemas'] = Input.mapOptionalInputValue<
              List<GlobalSecondaryIndexKeySchema>, List<Map<String, dynamic>>>(
          keySchemasValue,
          (value) => Input.encodeList<GlobalSecondaryIndexKeySchema,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final onDemandThroughputValue = onDemandThroughput;
    if (onDemandThroughputValue != null) {
      map['onDemandThroughput'] = Input.mapOptionalInputValue<
              GlobalSecondaryIndexOnDemandThroughput, Map<String, dynamic>>(
          onDemandThroughputValue, (value) => value.toMap());
    }
    final projectionValue = projection;
    if (projectionValue != null) {
      map['projection'] = Input.mapOptionalInputValue<
          GlobalSecondaryIndexProjection,
          Map<String, dynamic>>(projectionValue, (value) => value.toMap());
    }
    final provisionedThroughputValue = provisionedThroughput;
    if (provisionedThroughputValue != null) {
      map['provisionedThroughput'] = Input.mapOptionalInputValue<
              GlobalSecondaryIndexProvisionedThroughput, Map<String, dynamic>>(
          provisionedThroughputValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['tableName'] = tableName;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<
          GlobalSecondaryIndexTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final warmThroughputValue = warmThroughput;
    if (warmThroughputValue != null) {
      map['warmThroughput'] = Input.mapOptionalInputValue<
          GlobalSecondaryIndexWarmThroughput,
          Map<String, dynamic>>(warmThroughputValue, (value) => value.toMap());
    }
    return map;
  }

  factory GlobalSecondaryIndexArgs.fromMap(Map<String, dynamic> map) {
    return GlobalSecondaryIndexArgs(
      indexName: Input.asInput<String>(map['indexName']),
      keySchemas: Input.asOptionalInput<List<GlobalSecondaryIndexKeySchema>>(
          map['keySchemas']),
      onDemandThroughput:
          Input.asOptionalInput<GlobalSecondaryIndexOnDemandThroughput>(
              map['onDemandThroughput']),
      projection: Input.asOptionalInput<GlobalSecondaryIndexProjection>(
          map['projection']),
      provisionedThroughput:
          Input.asOptionalInput<GlobalSecondaryIndexProvisionedThroughput>(
              map['provisionedThroughput']),
      region: Input.asOptionalInput<String>(map['region']),
      tableName: Input.asInput<String>(map['tableName']),
      timeouts:
          Input.asOptionalInput<GlobalSecondaryIndexTimeouts>(map['timeouts']),
      warmThroughput: Input.asOptionalInput<GlobalSecondaryIndexWarmThroughput>(
          map['warmThroughput']),
    );
  }
}
