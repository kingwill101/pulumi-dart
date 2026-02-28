import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_consent_store_iam_policy_args.dart';
import 'get_consent_store_iam_policy_result.dart';
import 'get_dataset_iam_policy_args.dart';
import 'get_dataset_iam_policy_result.dart';
import 'get_dicom_store_iam_policy_args.dart';
import 'get_dicom_store_iam_policy_result.dart';
import 'get_fhir_store_iam_policy_args.dart';
import 'get_fhir_store_iam_policy_result.dart';
import 'get_hl7_v2_store_iam_policy_args.dart';
import 'get_hl7_v2_store_iam_policy_result.dart';

/// Retrieves the current IAM policy data for consentstore
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.healthcare.getConsentStoreIamPolicy({
///     dataset: my_consent.dataset,
///     consentStoreId: my_consent.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.healthcare.get_consent_store_iam_policy(dataset=my_consent["dataset"],
///     consent_store_id=my_consent["name"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Healthcare.GetConsentStoreIamPolicy.Invoke(new()
///     {
///         Dataset = my_consent.Dataset,
///         ConsentStoreId = my_consent.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.LookupConsentStoreIamPolicy(ctx, &healthcare.LookupConsentStoreIamPolicyArgs{
/// 			Dataset:        my_consent.Dataset,
/// 			ConsentStoreId: my_consent.Name,
/// 		}, nil)
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
/// import com.pulumi.gcp.healthcare.HealthcareFunctions;
/// import com.pulumi.gcp.healthcare.inputs.GetConsentStoreIamPolicyArgs;
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
///         final var policy = HealthcareFunctions.getConsentStoreIamPolicy(GetConsentStoreIamPolicyArgs.builder()
///             .dataset(my_consent.dataset())
///             .consentStoreId(my_consent.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:healthcare:getConsentStoreIamPolicy
///       arguments:
///         dataset: ${["my-consent"].dataset}
///         consentStoreId: ${["my-consent"].name}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_get_consent_store_iam_policy_get_consent_store_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConsentStoreIamPolicyResult> getConsentStoreIamPolicy(
  GetConsentStoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getConsentStoreIamPolicy:getConsentStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConsentStoreIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for a Google Cloud Healthcare dataset.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.healthcare.getDatasetIamPolicy({
///     datasetId: dataset.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.healthcare.get_dataset_iam_policy(dataset_id=dataset["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.Healthcare.GetDatasetIamPolicy.Invoke(new()
///     {
///         DatasetId = dataset.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.LookupDatasetIamPolicy(ctx, &healthcare.LookupDatasetIamPolicyArgs{
/// 			DatasetId: dataset.Id,
/// 		}, nil)
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
/// import com.pulumi.gcp.healthcare.HealthcareFunctions;
/// import com.pulumi.gcp.healthcare.inputs.GetDatasetIamPolicyArgs;
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
///         final var foo = HealthcareFunctions.getDatasetIamPolicy(GetDatasetIamPolicyArgs.builder()
///             .datasetId(dataset.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:healthcare:getDatasetIamPolicy
///       arguments:
///         datasetId: ${dataset.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_get_dataset_iam_policy_get_dataset_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatasetIamPolicyResult> getDatasetIamPolicy(
  GetDatasetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getDatasetIamPolicy:getDatasetIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatasetIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for a Google Cloud Healthcare DICOM store.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.healthcare.getDicomStoreIamPolicy({
///     dicomStoreId: dicomStore.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.healthcare.get_dicom_store_iam_policy(dicom_store_id=dicom_store["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.Healthcare.GetDicomStoreIamPolicy.Invoke(new()
///     {
///         DicomStoreId = dicomStore.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.LookupDicomStoreIamPolicy(ctx, &healthcare.LookupDicomStoreIamPolicyArgs{
/// 			DicomStoreId: dicomStore.Id,
/// 		}, nil)
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
/// import com.pulumi.gcp.healthcare.HealthcareFunctions;
/// import com.pulumi.gcp.healthcare.inputs.GetDicomStoreIamPolicyArgs;
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
///         final var foo = HealthcareFunctions.getDicomStoreIamPolicy(GetDicomStoreIamPolicyArgs.builder()
///             .dicomStoreId(dicomStore.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:healthcare:getDicomStoreIamPolicy
///       arguments:
///         dicomStoreId: ${dicomStore.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_get_dicom_store_iam_policy_get_dicom_store_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDicomStoreIamPolicyResult> getDicomStoreIamPolicy(
  GetDicomStoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getDicomStoreIamPolicy:getDicomStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDicomStoreIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for a Google Cloud Healthcare FHIR store.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.healthcare.getFhirStoreIamPolicy({
///     fhirStoreId: fhirStore.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.healthcare.get_fhir_store_iam_policy(fhir_store_id=fhir_store["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.Healthcare.GetFhirStoreIamPolicy.Invoke(new()
///     {
///         FhirStoreId = fhirStore.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.LookupFhirStoreIamPolicy(ctx, &healthcare.LookupFhirStoreIamPolicyArgs{
/// 			FhirStoreId: fhirStore.Id,
/// 		}, nil)
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
/// import com.pulumi.gcp.healthcare.HealthcareFunctions;
/// import com.pulumi.gcp.healthcare.inputs.GetFhirStoreIamPolicyArgs;
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
///         final var foo = HealthcareFunctions.getFhirStoreIamPolicy(GetFhirStoreIamPolicyArgs.builder()
///             .fhirStoreId(fhirStore.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:healthcare:getFhirStoreIamPolicy
///       arguments:
///         fhirStoreId: ${fhirStore.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_get_fhir_store_iam_policy_get_fhir_store_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFhirStoreIamPolicyResult> getFhirStoreIamPolicy(
  GetFhirStoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getFhirStoreIamPolicy:getFhirStoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFhirStoreIamPolicyResult.fromMap(result);
}

/// Retrieves the current IAM policy data for a Google Cloud Healthcare HL7v2 store.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = gcp.healthcare.getHl7V2StoreIamPolicy({
///     hl7V2StoreId: hl7V2Store.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.healthcare.get_hl7_v2_store_iam_policy(hl7_v2_store_id=hl7_v2_store["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Gcp.Healthcare.GetHl7V2StoreIamPolicy.Invoke(new()
///     {
///         Hl7V2StoreId = hl7V2Store.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := healthcare.GetHl7V2StoreIamPolicy(ctx, &healthcare.GetHl7V2StoreIamPolicyArgs{
/// 			Hl7V2StoreId: hl7V2Store.Id,
/// 		}, nil)
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
/// import com.pulumi.gcp.healthcare.HealthcareFunctions;
/// import com.pulumi.gcp.healthcare.inputs.GetHl7V2StoreIamPolicyArgs;
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
///         final var foo = HealthcareFunctions.getHl7V2StoreIamPolicy(GetHl7V2StoreIamPolicyArgs.builder()
///             .hl7V2StoreId(hl7V2Store.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: gcp:healthcare:getHl7V2StoreIamPolicy
///       arguments:
///         hl7V2StoreId: ${hl7V2Store.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_healthcare_get_hl7_v2_store_iam_policy_get_hl7_v2_store_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHl7V2StoreIamPolicyResult> getHl7V2StoreIamPolicy(
  GetHl7V2StoreIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:healthcare/getHl7V2StoreIamPolicy:getHl7V2StoreIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHl7V2StoreIamPolicyResult.fromMap(result);
}
