import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_schedule_association_args.dart';
import 'snapshot_schedule_association_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.redshift.Cluster("default", {
///     clusterIdentifier: "tf-redshift-cluster",
///     databaseName: "mydb",
///     masterUsername: "foo",
///     masterPassword: "Mustbe8characters",
///     nodeType: "dc1.large",
///     clusterType: "single-node",
/// });
/// const defaultSnapshotSchedule = new aws.redshift.SnapshotSchedule("default", {
///     identifier: "tf-redshift-snapshot-schedule",
///     definitions: ["rate(12 hours)"],
/// });
/// const defaultSnapshotScheduleAssociation = new aws.redshift.SnapshotScheduleAssociation("default", {
///     clusterIdentifier: _default.id,
///     scheduleIdentifier: defaultSnapshotSchedule.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.redshift.Cluster("default",
///     cluster_identifier="tf-redshift-cluster",
///     database_name="mydb",
///     master_username="foo",
///     master_password="Mustbe8characters",
///     node_type="dc1.large",
///     cluster_type="single-node")
/// default_snapshot_schedule = aws.redshift.SnapshotSchedule("default",
///     identifier="tf-redshift-snapshot-schedule",
///     definitions=["rate(12 hours)"])
/// default_snapshot_schedule_association = aws.redshift.SnapshotScheduleAssociation("default",
///     cluster_identifier=default.id,
///     schedule_identifier=default_snapshot_schedule.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.RedShift.Cluster("default", new()
///     {
///         ClusterIdentifier = "tf-redshift-cluster",
///         DatabaseName = "mydb",
///         MasterUsername = "foo",
///         MasterPassword = "Mustbe8characters",
///         NodeType = "dc1.large",
///         ClusterType = "single-node",
///     });
///
///     var defaultSnapshotSchedule = new Aws.RedShift.SnapshotSchedule("default", new()
///     {
///         Identifier = "tf-redshift-snapshot-schedule",
///         Definitions = new[]
///         {
///             "rate(12 hours)",
///         },
///     });
///
///     var defaultSnapshotScheduleAssociation = new Aws.RedShift.SnapshotScheduleAssociation("default", new()
///     {
///         ClusterIdentifier = @default.Id,
///         ScheduleIdentifier = defaultSnapshotSchedule.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := redshift.NewCluster(ctx, "default", &redshift.ClusterArgs{
/// 			ClusterIdentifier: pulumi.String("tf-redshift-cluster"),
/// 			DatabaseName:      pulumi.String("mydb"),
/// 			MasterUsername:    pulumi.String("foo"),
/// 			MasterPassword:    pulumi.String("Mustbe8characters"),
/// 			NodeType:          pulumi.String("dc1.large"),
/// 			ClusterType:       pulumi.String("single-node"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSnapshotSchedule, err := redshift.NewSnapshotSchedule(ctx, "default", &redshift.SnapshotScheduleArgs{
/// 			Identifier: pulumi.String("tf-redshift-snapshot-schedule"),
/// 			Definitions: pulumi.StringArray{
/// 				pulumi.String("rate(12 hours)"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redshift.NewSnapshotScheduleAssociation(ctx, "default", &redshift.SnapshotScheduleAssociationArgs{
/// 			ClusterIdentifier:  _default.ID(),
/// 			ScheduleIdentifier: defaultSnapshotSchedule.ID(),
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
/// import com.pulumi.aws.redshift.Cluster;
/// import com.pulumi.aws.redshift.ClusterArgs;
/// import com.pulumi.aws.redshift.SnapshotSchedule;
/// import com.pulumi.aws.redshift.SnapshotScheduleArgs;
/// import com.pulumi.aws.redshift.SnapshotScheduleAssociation;
/// import com.pulumi.aws.redshift.SnapshotScheduleAssociationArgs;
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
///         var default_ = new Cluster("default", ClusterArgs.builder()
///             .clusterIdentifier("tf-redshift-cluster")
///             .databaseName("mydb")
///             .masterUsername("foo")
///             .masterPassword("Mustbe8characters")
///             .nodeType("dc1.large")
///             .clusterType("single-node")
///             .build());
///
///         var defaultSnapshotSchedule = new SnapshotSchedule("defaultSnapshotSchedule", SnapshotScheduleArgs.builder()
///             .identifier("tf-redshift-snapshot-schedule")
///             .definitions("rate(12 hours)")
///             .build());
///
///         var defaultSnapshotScheduleAssociation = new SnapshotScheduleAssociation("defaultSnapshotScheduleAssociation", SnapshotScheduleAssociationArgs.builder()
///             .clusterIdentifier(default_.id())
///             .scheduleIdentifier(defaultSnapshotSchedule.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:redshift:Cluster
///     properties:
///       clusterIdentifier: tf-redshift-cluster
///       databaseName: mydb
///       masterUsername: foo
///       masterPassword: Mustbe8characters
///       nodeType: dc1.large
///       clusterType: single-node
///   defaultSnapshotSchedule:
///     type: aws:redshift:SnapshotSchedule
///     name: default
///     properties:
///       identifier: tf-redshift-snapshot-schedule
///       definitions:
///         - rate(12 hours)
///   defaultSnapshotScheduleAssociation:
///     type: aws:redshift:SnapshotScheduleAssociation
///     name: default
///     properties:
///       clusterIdentifier: ${default.id}
///       scheduleIdentifier: ${defaultSnapshotSchedule.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Snapshot Schedule Association using the `<cluster-identifier>/<schedule-identifier>`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/snapshotScheduleAssociation:SnapshotScheduleAssociation default tf-redshift-cluster/tf-redshift-snapshot-schedule
/// ```
class SnapshotScheduleAssociation extends pulumi.CustomResource {
  /// The cluster identifier.
  late final pulumi.Output<String> clusterIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The snapshot schedule identifier.
  late final pulumi.Output<String> scheduleIdentifier;

  /// Creates a new [SnapshotScheduleAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnapshotScheduleAssociation]. {@macro pulumi_redshift_snapshot_schedule_association_snapshot_schedule_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnapshotScheduleAssociation(
    String name, {
    SnapshotScheduleAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/snapshotScheduleAssociation:SnapshotScheduleAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.region = registerOutput<String>('region');
    this.scheduleIdentifier = registerOutput<String>('scheduleIdentifier');
  }

  /// Gets an existing [SnapshotScheduleAssociation] resource's state with the given [name] and [id].
  static SnapshotScheduleAssociation get(
    String name,
    pulumi.Input<String> id, {
    SnapshotScheduleAssociationState? state,
  }) {
    return SnapshotScheduleAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SnapshotScheduleAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/snapshotScheduleAssociation:SnapshotScheduleAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.region = registerOutput<String>('region');
    this.scheduleIdentifier = registerOutput<String>('scheduleIdentifier');
  }
}
