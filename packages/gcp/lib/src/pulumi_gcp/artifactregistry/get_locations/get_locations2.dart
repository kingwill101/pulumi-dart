import 'package:pulumi/pulumi.dart';
import 'get_locations_args2.dart';
import 'get_locations_result2.dart';

/// Get Artifact Registry locations available for a project.
///
/// To get more information about Artifact Registry, see:
///
/// * [API documentation](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations/list)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/artifact-registry/docs/overview)
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const available = gcp.artifactregistry.getLocations({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// available = gcp.artifactregistry.get_locations()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Gcp.ArtifactRegistry.GetLocations.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := artifactregistry.GetLocations(ctx, &artifactregistry.GetLocationsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetLocationsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var available = ArtifactregistryFunctions.getLocations(GetLocationsArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// available:
/// fn::invoke:
/// function: gcp:artifactregistry:getLocations
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
///
/// ### Multi-Regional Artifact Registry Deployment
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const available = gcp.artifactregistry.getLocations({});
/// const repoOne = new gcp.artifactregistry.Repository("repo_one", {
/// location: available.then(available => available.locations?.[0]),
/// repositoryId: "repo-one",
/// format: "apt",
/// });
/// const repoTwo = new gcp.artifactregistry.Repository("repo_two", {
/// location: available.then(available => available.locations?.[1]),
/// repositoryId: "repo-two",
/// format: "apt",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// available = gcp.artifactregistry.get_locations()
/// repo_one = gcp.artifactregistry.Repository("repo_one",
/// location=available.locations[0],
/// repository_id="repo-one",
/// format="apt")
/// repo_two = gcp.artifactregistry.Repository("repo_two",
/// location=available.locations[1],
/// repository_id="repo-two",
/// format="apt")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var available = Gcp.ArtifactRegistry.GetLocations.Invoke();
///
/// var repoOne = new Gcp.ArtifactRegistry.Repository("repo_one", new()
/// {
/// Location = available.Apply(getLocationsResult => getLocationsResult.Locations[0]),
/// RepositoryId = "repo-one",
/// Format = "apt",
/// });
///
/// var repoTwo = new Gcp.ArtifactRegistry.Repository("repo_two", new()
/// {
/// Location = available.Apply(getLocationsResult => getLocationsResult.Locations[1]),
/// RepositoryId = "repo-two",
/// Format = "apt",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/artifactregistry"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// available, err := artifactregistry.GetLocations(ctx, &artifactregistry.GetLocationsArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = artifactregistry.NewRepository(ctx, "repo_one", &artifactregistry.RepositoryArgs{
/// Location:     pulumi.String(available.Locations[0]),
/// RepositoryId: pulumi.String("repo-one"),
/// Format:       pulumi.String("apt"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = artifactregistry.NewRepository(ctx, "repo_two", &artifactregistry.RepositoryArgs{
/// Location:     pulumi.String(available.Locations[1]),
/// RepositoryId: pulumi.String("repo-two"),
/// Format:       pulumi.String("apt"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.artifactregistry.ArtifactregistryFunctions;
/// import com.pulumi.gcp.artifactregistry.inputs.GetLocationsArgs;
/// import com.pulumi.gcp.artifactregistry.Repository;
/// import com.pulumi.gcp.artifactregistry.RepositoryArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var available = ArtifactregistryFunctions.getLocations(GetLocationsArgs.builder()
/// .build());
///
/// var repoOne = new Repository("repoOne", RepositoryArgs.builder()
/// .location(available.locations()[0])
/// .repositoryId("repo-one")
/// .format("apt")
/// .build());
///
/// var repoTwo = new Repository("repoTwo", RepositoryArgs.builder()
/// .location(available.locations()[1])
/// .repositoryId("repo-two")
/// .format("apt")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// repoOne:
/// type: gcp:artifactregistry:Repository
/// name: repo_one
/// properties:
/// location: ${available.locations[0]}
/// repositoryId: repo-one
/// format: apt
/// repoTwo:
/// type: gcp:artifactregistry:Repository
/// name: repo_two
/// properties:
/// location: ${available.locations[1]}
/// repositoryId: repo-two
/// format: apt
/// variables:
/// available:
/// fn::invoke:
/// function: gcp:artifactregistry:getLocations
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetLocationsResult2> getLocations2(
  GetLocationsArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:artifactregistry/getLocations:getLocations',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetLocationsResult2.fromMap(result);
}
