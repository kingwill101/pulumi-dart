import 'package:pulumi/pulumi.dart' as pulumi;
import 'tracker_association_args.dart';
import 'tracker_association_state.dart';

/// Resource for managing an AWS Location Tracker Association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.location.GeofenceCollection("example", {collectionName: "example"});
/// const exampleTracker = new aws.location.Tracker("example", {trackerName: "example"});
/// const exampleTrackerAssociation = new aws.location.TrackerAssociation("example", {
///     consumerArn: example.collectionArn,
///     trackerName: exampleTracker.trackerName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.GeofenceCollection("example", collection_name="example")
/// example_tracker = aws.location.Tracker("example", tracker_name="example")
/// example_tracker_association = aws.location.TrackerAssociation("example",
///     consumer_arn=example.collection_arn,
///     tracker_name=example_tracker.tracker_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Location.GeofenceCollection("example", new()
///     {
///         CollectionName = "example",
///     });
///
///     var exampleTracker = new Aws.Location.Tracker("example", new()
///     {
///         TrackerName = "example",
///     });
///
///     var exampleTrackerAssociation = new Aws.Location.TrackerAssociation("example", new()
///     {
///         ConsumerArn = example.CollectionArn,
///         TrackerName = exampleTracker.TrackerName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/location"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := location.NewGeofenceCollection(ctx, "example", &location.GeofenceCollectionArgs{
/// 			CollectionName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTracker, err := location.NewTracker(ctx, "example", &location.TrackerArgs{
/// 			TrackerName: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = location.NewTrackerAssociation(ctx, "example", &location.TrackerAssociationArgs{
/// 			ConsumerArn: example.CollectionArn,
/// 			TrackerName: exampleTracker.TrackerName,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_location_geofencecollection" "example" {
///   collection_name = "example"
/// }
/// resource "aws_location_tracker" "example" {
///   tracker_name = "example"
/// }
/// resource "aws_location_trackerassociation" "example" {
///   consumer_arn = aws_location_geofencecollection.example.collection_arn
///   tracker_name = aws_location_tracker.example.tracker_name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.location.GeofenceCollection;
/// import com.pulumi.aws.location.GeofenceCollectionArgs;
/// import com.pulumi.aws.location.Tracker;
/// import com.pulumi.aws.location.TrackerArgs;
/// import com.pulumi.aws.location.TrackerAssociation;
/// import com.pulumi.aws.location.TrackerAssociationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new GeofenceCollection("example", GeofenceCollectionArgs.builder()
///             .collectionName("example")
///             .build());
///
///         var exampleTracker = new Tracker("exampleTracker", TrackerArgs.builder()
///             .trackerName("example")
///             .build());
///
///         var exampleTrackerAssociation = new TrackerAssociation("exampleTrackerAssociation", TrackerAssociationArgs.builder()
///             .consumerArn(example.collectionArn())
///             .trackerName(exampleTracker.trackerName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:location:GeofenceCollection
///     properties:
///       collectionName: example
///   exampleTracker:
///     type: aws:location:Tracker
///     name: example
///     properties:
///       trackerName: example
///   exampleTrackerAssociation:
///     type: aws:location:TrackerAssociation
///     name: example
///     properties:
///       consumerArn: ${example.collectionArn}
///       trackerName: ${exampleTracker.trackerName}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Location Tracker Association using the `tracker_name|consumer_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:location/trackerAssociation:TrackerAssociation example "tracker_name|consumer_arn"
/// ```
class TrackerAssociation extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) for the geofence collection to be associated to tracker resource. Used when you need to specify a resource across all AWS.
  late final pulumi.Output<String> consumerArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The name of the tracker resource to be associated with a geofence collection.
  late final pulumi.Output<String> trackerName;

  /// Creates a new [TrackerAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrackerAssociation]. {@macro pulumi_location_tracker_association_tracker_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrackerAssociation(
    String name, {
    TrackerAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:location/trackerAssociation:TrackerAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    consumerArn = registerOutput<String>('consumerArn');
    region = registerOutput<String>('region');
    trackerName = registerOutput<String>('trackerName');
  }

  /// Gets an existing [TrackerAssociation] resource's state with the given [name] and [id].
  static TrackerAssociation get(
    String name,
    pulumi.Input<String> id, {
    TrackerAssociationState? state,
  }) {
    return TrackerAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrackerAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:location/trackerAssociation:TrackerAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    consumerArn = registerOutput<String>('consumerArn');
    region = registerOutput<String>('region');
    trackerName = registerOutput<String>('trackerName');
  }
}
