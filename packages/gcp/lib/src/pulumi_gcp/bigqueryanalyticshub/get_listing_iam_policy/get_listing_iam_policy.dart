import 'package:pulumi/pulumi.dart';
import 'get_listing_iam_policy_args.dart';
import 'get_listing_iam_policy_result.dart';

/// Retrieves the current IAM policy data for listing
///
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.bigqueryanalyticshub.getListingIamPolicy({
/// project: listing.project,
/// location: listing.location,
/// dataExchangeId: listing.dataExchangeId,
/// listingId: listing.listingId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.bigqueryanalyticshub.get_listing_iam_policy(project=listing["project"],
/// location=listing["location"],
/// data_exchange_id=listing["dataExchangeId"],
/// listing_id=listing["listingId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var policy = Gcp.BigQueryAnalyticsHub.GetListingIamPolicy.Invoke(new()
/// {
/// Project = listing.Project,
/// Location = listing.Location,
/// DataExchangeId = listing.DataExchangeId,
/// ListingId = listing.ListingId,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := bigqueryanalyticshub.LookupListingIamPolicy(ctx, &bigqueryanalyticshub.LookupListingIamPolicyArgs{
/// Project:        pulumi.StringRef(listing.Project),
/// Location:       pulumi.StringRef(listing.Location),
/// DataExchangeId: listing.DataExchangeId,
/// ListingId:      listing.ListingId,
/// }, nil)
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
/// import com.pulumi.gcp.bigqueryanalyticshub.BigqueryanalyticshubFunctions;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.GetListingIamPolicyArgs;
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
/// final var policy = BigqueryanalyticshubFunctions.getListingIamPolicy(GetListingIamPolicyArgs.builder()
/// .project(listing.project())
/// .location(listing.location())
/// .dataExchangeId(listing.dataExchangeId())
/// .listingId(listing.listingId())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// policy:
/// fn::invoke:
/// function: gcp:bigqueryanalyticshub:getListingIamPolicy
/// arguments:
/// project: ${listing.project}
/// location: ${listing.location}
/// dataExchangeId: ${listing.dataExchangeId}
/// listingId: ${listing.listingId}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetListingIamPolicyResult> getListingIamPolicy(
  GetListingIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigqueryanalyticshub/getListingIamPolicy:getListingIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetListingIamPolicyResult.fromMap(result);
}
