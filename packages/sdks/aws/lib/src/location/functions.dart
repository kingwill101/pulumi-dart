import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_geofence_collection_args.dart';
import 'get_geofence_collection_result.dart';
import 'get_map_args.dart';
import 'get_map_result.dart';
import 'get_place_index_args.dart';
import 'get_place_index_result.dart';
import 'get_route_calculator_args.dart';
import 'get_route_calculator_result.dart';
import 'get_tracker_args.dart';
import 'get_tracker_association_args.dart';
import 'get_tracker_association_result.dart';
import 'get_tracker_associations_args.dart';
import 'get_tracker_associations_result.dart';
import 'get_tracker_result.dart';

/// Retrieve information about a Location Service Geofence Collection.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.location.getGeofenceCollection({
///     collectionName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.get_geofence_collection(collection_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Location.GetGeofenceCollection.Invoke(new()
///     {
///         CollectionName = "example",
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
/// 		_, err := location.LookupGeofenceCollection(ctx, &location.LookupGeofenceCollectionArgs{
/// 			CollectionName: "example",
/// 		}, nil)
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
/// data "aws_location_getgeofencecollection" "example" {
///   collection_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.location.LocationFunctions;
/// import com.pulumi.aws.location.inputs.GetGeofenceCollectionArgs;
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
///         final var example = LocationFunctions.getGeofenceCollection(GetGeofenceCollectionArgs.builder()
///             .collectionName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:location:getGeofenceCollection
///       arguments:
///         collectionName: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_location_get_geofence_collection_get_geofence_collection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGeofenceCollectionResult> getGeofenceCollection(
  GetGeofenceCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getGeofenceCollection:getGeofenceCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGeofenceCollectionResult.fromMap(result);
}

/// Retrieve information about a Location Service Map.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.location.getMap({
///     mapName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.get_map(map_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Location.GetMap.Invoke(new()
///     {
///         MapName = "example",
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
/// 		_, err := location.LookupMap(ctx, &location.LookupMapArgs{
/// 			MapName: "example",
/// 		}, nil)
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
/// data "aws_location_getmap" "example" {
///   map_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.location.LocationFunctions;
/// import com.pulumi.aws.location.inputs.GetMapArgs;
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
///         final var example = LocationFunctions.getMap(GetMapArgs.builder()
///             .mapName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:location:getMap
///       arguments:
///         mapName: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_location_get_map_get_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMapResult> getMap(
  GetMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getMap:getMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMapResult.fromMap(result);
}

/// Retrieve information about a Location Service Place Index.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.location.getPlaceIndex({
///     indexName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.get_place_index(index_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Location.GetPlaceIndex.Invoke(new()
///     {
///         IndexName = "example",
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
/// 		_, err := location.LookupPlaceIndex(ctx, &location.LookupPlaceIndexArgs{
/// 			IndexName: "example",
/// 		}, nil)
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
/// data "aws_location_getplaceindex" "example" {
///   index_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.location.LocationFunctions;
/// import com.pulumi.aws.location.inputs.GetPlaceIndexArgs;
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
///         final var example = LocationFunctions.getPlaceIndex(GetPlaceIndexArgs.builder()
///             .indexName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:location:getPlaceIndex
///       arguments:
///         indexName: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_location_get_place_index_get_place_index_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPlaceIndexResult> getPlaceIndex(
  GetPlaceIndexArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getPlaceIndex:getPlaceIndex',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPlaceIndexResult.fromMap(result);
}

/// Retrieve information about a Location Service Route Calculator.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.location.getRouteCalculator({
///     calculatorName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.get_route_calculator(calculator_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Location.GetRouteCalculator.Invoke(new()
///     {
///         CalculatorName = "example",
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
/// 		_, err := location.GetRouteCalculator(ctx, &location.GetRouteCalculatorArgs{
/// 			CalculatorName: "example",
/// 		}, nil)
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
/// data "aws_location_getroutecalculator" "example" {
///   calculator_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.location.LocationFunctions;
/// import com.pulumi.aws.location.inputs.GetRouteCalculatorArgs;
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
///         final var example = LocationFunctions.getRouteCalculator(GetRouteCalculatorArgs.builder()
///             .calculatorName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:location:getRouteCalculator
///       arguments:
///         calculatorName: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_location_get_route_calculator_get_route_calculator_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteCalculatorResult> getRouteCalculator(
  GetRouteCalculatorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getRouteCalculator:getRouteCalculator',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteCalculatorResult.fromMap(result);
}

/// Retrieve information about a Location Service Tracker.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.location.getTracker({
///     trackerName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.get_tracker(tracker_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Location.GetTracker.Invoke(new()
///     {
///         TrackerName = "example",
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
/// 		_, err := location.LookupTracker(ctx, &location.LookupTrackerArgs{
/// 			TrackerName: "example",
/// 		}, nil)
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
/// data "aws_location_gettracker" "example" {
///   tracker_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.location.LocationFunctions;
/// import com.pulumi.aws.location.inputs.GetTrackerArgs;
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
///         final var example = LocationFunctions.getTracker(GetTrackerArgs.builder()
///             .trackerName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:location:getTracker
///       arguments:
///         trackerName: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_location_get_tracker_get_tracker_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrackerResult> getTracker(
  GetTrackerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getTracker:getTracker',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrackerResult.fromMap(result);
}

/// Retrieve information about a Location Service Tracker Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.location.getTrackerAssociation({
///     consumerArn: "arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer",
///     trackerName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.get_tracker_association(consumer_arn="arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer",
///     tracker_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Location.GetTrackerAssociation.Invoke(new()
///     {
///         ConsumerArn = "arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer",
///         TrackerName = "example",
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
/// 		_, err := location.LookupTrackerAssociation(ctx, &location.LookupTrackerAssociationArgs{
/// 			ConsumerArn: "arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer",
/// 			TrackerName: "example",
/// 		}, nil)
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
/// data "aws_location_gettrackerassociation" "example" {
///   consumer_arn = "arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer"
///   tracker_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.location.LocationFunctions;
/// import com.pulumi.aws.location.inputs.GetTrackerAssociationArgs;
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
///         final var example = LocationFunctions.getTrackerAssociation(GetTrackerAssociationArgs.builder()
///             .consumerArn("arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer")
///             .trackerName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:location:getTrackerAssociation
///       arguments:
///         consumerArn: arn:aws:geo:region:account-id:geofence-collection/ExampleGeofenceCollectionConsumer
///         trackerName: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_location_get_tracker_association_get_tracker_association_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrackerAssociationResult> getTrackerAssociation(
  GetTrackerAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getTrackerAssociation:getTrackerAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrackerAssociationResult.fromMap(result);
}

/// Retrieve information about Location Service Tracker Associations.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.location.getTrackerAssociations({
///     trackerName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.get_tracker_associations(tracker_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Location.GetTrackerAssociations.Invoke(new()
///     {
///         TrackerName = "example",
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
/// 		_, err := location.GetTrackerAssociations(ctx, &location.GetTrackerAssociationsArgs{
/// 			TrackerName: "example",
/// 		}, nil)
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
/// data "aws_location_gettrackerassociations" "example" {
///   tracker_name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.location.LocationFunctions;
/// import com.pulumi.aws.location.inputs.GetTrackerAssociationsArgs;
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
///         final var example = LocationFunctions.getTrackerAssociations(GetTrackerAssociationsArgs.builder()
///             .trackerName("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:location:getTrackerAssociations
///       arguments:
///         trackerName: example
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_location_get_tracker_associations_get_tracker_associations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrackerAssociationsResult> getTrackerAssociations(
  GetTrackerAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:location/getTrackerAssociations:getTrackerAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrackerAssociationsResult.fromMap(result);
}
