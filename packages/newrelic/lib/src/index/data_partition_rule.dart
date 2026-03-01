import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_partition_rule_args.dart';

/// Use this resource to create, update and delete New Relic Data partition rule.
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.DataPartitionRule("foo", {
///     description: "description",
///     enabled: true,
///     nrql: "logtype='node'",
///     retentionPolicy: "STANDARD",
///     targetDataPartition: "Log_name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.DataPartitionRule("foo",
///     description="description",
///     enabled=True,
///     nrql="logtype='node'",
///     retention_policy="STANDARD",
///     target_data_partition="Log_name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.DataPartitionRule("foo", new()
///     {
///         Description = "description",
///         Enabled = true,
///         Nrql = "logtype='node'",
///         RetentionPolicy = "STANDARD",
///         TargetDataPartition = "Log_name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := newrelic.NewDataPartitionRule(ctx, "foo", &newrelic.DataPartitionRuleArgs{
/// 			Description:         pulumi.String("description"),
/// 			Enabled:             pulumi.Bool(true),
/// 			Nrql:                pulumi.String("logtype='node'"),
/// 			RetentionPolicy:     pulumi.String("STANDARD"),
/// 			TargetDataPartition: pulumi.String("Log_name"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.newrelic.DataPartitionRule;
/// import com.pulumi.newrelic.DataPartitionRuleArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var foo = new DataPartitionRule("foo", DataPartitionRuleArgs.builder()
///             .description("description")
///             .enabled(true)
///             .nrql("logtype='node'")
///             .retentionPolicy("STANDARD")
///             .targetDataPartition("Log_name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:DataPartitionRule
///     properties:
///       description: description
///       enabled: true
///       nrql: logtype='node'
///       retentionPolicy: STANDARD
///       targetDataPartition: Log_name
/// ```
///
///
/// ## Additional Information
///
/// More details about the data partition can be found [here](https://docs.newrelic.com/docs/logs/ui-data/data-partitions/)
///
/// ## Import
///
/// New Relic data partition rule can be imported using the rule ID, e.g.
///
/// ```bash
/// $ terraform import newrelic_data_partition_rule.foo <id>
/// ```
class DataPartitionRule extends pulumi.CustomResource {
  /// The account id associated with the data partition rule.
  late final pulumi.Output<String> accountId;
  /// Whether or not this data partition rule is deleted. Deleting a data partition rule does not delete the already persisted data. This data will be retained for a given period of time specified in the retention policy field.
  late final pulumi.Output<bool> deleted;
  /// The description of the data partition rule.
  late final pulumi.Output<String?> description;
  /// Whether or not this data partition rule is enabled.
  late final pulumi.Output<bool> enabled;
  /// The NRQL to match events for this data partition rule. Logs matching this criteria will be routed to the specified data partition.
  late final pulumi.Output<String> nrql;
  /// The retention policy of the data partition data. Valid values are `SECONDARY` and `STANDARD`.
  late final pulumi.Output<String> retentionPolicy;
  /// The name of the data partition where logs will be allocated once the rule is enabled.
  late final pulumi.Output<String> targetDataPartition;

  /// Creates a new [DataPartitionRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataPartitionRule]. {@macro pulumi_index_data_partition_rule_data_partition_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataPartitionRule(
    String name, {
    DataPartitionRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/dataPartitionRule:DataPartitionRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.deleted = registerOutput<bool>('deleted');
    this.description = registerOutput<String?>('description');
    this.enabled = registerOutput<bool>('enabled');
    this.nrql = registerOutput<String>('nrql');
    this.retentionPolicy = registerOutput<String>('retentionPolicy');
    this.targetDataPartition = registerOutput<String>('targetDataPartition');
  }
}
