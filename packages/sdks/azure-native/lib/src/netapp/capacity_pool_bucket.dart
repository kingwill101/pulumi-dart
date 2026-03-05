import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_server_properties_response.dart';
import 'capacity_pool_bucket_args.dart';
import 'file_system_user_response.dart';
import 'system_data_response.dart';

/// Bucket resource
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2025-03-01-preview, 2025-07-01-preview, 2025-08-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Buckets_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var capacityPoolBucket = new AzureNative.NetApp.CapacityPoolBucket("capacityPoolBucket", new()
///     {
///         AccountName = "account1",
///         BucketName = "bucket1",
///         FileSystemUser = new AzureNative.NetApp.Inputs.FileSystemUserArgs
///         {
///             NfsUser = new AzureNative.NetApp.Inputs.NfsUserArgs
///             {
///                 GroupId = 1000,
///                 UserId = 1001,
///             },
///         },
///         Path = "/path",
///         PoolName = "pool1",
///         ResourceGroupName = "myRG",
///         Server = new AzureNative.NetApp.Inputs.BucketServerPropertiesArgs
///         {
///             CertificateObject = "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURuVENDQW9XZ0F3SUJBZ0lRR3FXdnRxeHBvSTFJV3Z4VGdJbElWREFOQmdrcWhraUc5dzBCQVFzRkFEQlYKTVJNd0VRWUtDWkltaVpQeUxHUUJHUllEWTI5dE1SY3dGUVlLQ1pJbWlaUHlMR1FCR1JZSGFHRnlhV3R5WWpFbApNQ01HQTFVRUF4TWNhR0Z5YVd0eVlpMVhTVTR0TWtKUFZrRkZTMEkwTkVJdFEwRXRNakFlRncweU1EQTFNRFV3Ck56TTVORGxhRncweU1EQTFNRFl3TnpRNU5EaGFNRlV4RXpBUkJnb0praWFKay9Jc1pBRVpGZ05qYjIweEZ6QVYKQmdvSmtpYUprL0lzWkFFWkZnZG9ZWEpwYTNKaU1TVXdJd1lEVlFRREV4eG9ZWEpwYTNKaUxWZEpUaTB5UWs5VwpRVVZMUWpRMFFpMURRUzB5TUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUFqMHByCnhaaXpNaDBqYnRwN1ZOc0JrRVJ2MVpZT0MzMEtqaGRWdEExRm1MeFM2cXlycmpMZUdXOXRSd2ZnUkR0eVBodTIKZVJTcVpTUjF6Z1hZR0s0Nys3Y3F0YnB2UElOektCb0dOWERIVTNxVWlleXJWSjFDVzRKNjJodUdrbUV1VVVkMApKMXBxNTVxbjk1SmRUbWh1dmZlTUxxeHB5c01nbGVnY281ZFhoN0hsQkhwaTNKMFN4ZnhVWmxKMVZiOFJZVEZhCkJiMGFlTVZaRzRKeVREaktiMlR1TmFXOG1aUE5vOFBMRDRocjdndFNZUEQvQ1dVVGV5QlpoZC9LTzNPczlWVEIKYmpLUGtWd0J2WEs2SlFMSGprNFBHS3VYZDhaWVFyajBtOWNIZDNmcWNYTXlQUnQ2TlJ4ak0yMTUxckFzSkVhNgpWZC9ta056akpXalBrT2VZUVFJREFRQUJvMmt3WnpBVEJna3JCZ0VFQVlJM0ZBSUVCaDRFQUVNQVFUQU9CZ05WCkhROEJBZjhFQkFNQ0FZWXdEd1lEVlIwVEFRSC9CQVV3QXdFQi96QWRCZ05WSFE0RUZnUVVDVEc2ODJSay9kMysKWGtHa0VMakRFMjI4ZjNnd0VBWUpLd1lCQkFHQ054VUJCQU1DQVFBd0RRWUpLb1pJaHZjTkFRRUxCUUFEZ2dFQgpBR1RjTTNnWExIU05wS014RHEvUFpZbWZCMmNlN3VhMmxxbXpzZSt4QmthSTE0WXdzZE5ZQjZBVTNFWDM3QWpZCjd3bm9xQzY1N0U2RVhTODVDckoyNXJNTHo4OEtONGI3cUg5RUowSS9XVHg5YTdUT0ZENENWQThuL0xwNGh1Ym4KNlBFalY5NFlZWXBXTG1hTkkvbGFReWsxSHVJbDFSTCttVDFnSWQ4ZWZXZ1UvNmlVVEw3eGMrdjkyNHBuTHhISwpOSnNTV3c0NFk5a0R5SU9KOXFjWUlBN1lhTkxPZTRjSysvQlRvdDh0dVVKT1hHLzdBRmtxR2EyQVA4MmFZOStKCnkwSmU2OG5nTHJ1dVU4VHpneVpqdkFHcTRrVEVOdWFoaFdHVC9KWkEzOXhSNUV4MmNMUUplcE5NdnlZbUZ3Z1UKME8zYlA0OWNBVFVCMXoyQ3Y5aTRQbVk9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
///             Fqdn = "fullyqualified.domainname.com",
///         },
///         VolumeName = "volume1",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewCapacityPoolBucket(ctx, "capacityPoolBucket", &netapp.CapacityPoolBucketArgs{
/// 			AccountName: pulumi.String("account1"),
/// 			BucketName:  pulumi.String("bucket1"),
/// 			FileSystemUser: &netapp.FileSystemUserArgs{
/// 				NfsUser: &netapp.NfsUserArgs{
/// 					GroupId: pulumi.Float64(1000),
/// 					UserId:  pulumi.Float64(1001),
/// 				},
/// 			},
/// 			Path:              pulumi.String("/path"),
/// 			PoolName:          pulumi.String("pool1"),
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			Server: &netapp.BucketServerPropertiesArgs{
/// 				CertificateObject: pulumi.String("LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURuVENDQW9XZ0F3SUJBZ0lRR3FXdnRxeHBvSTFJV3Z4VGdJbElWREFOQmdrcWhraUc5dzBCQVFzRkFEQlYKTVJNd0VRWUtDWkltaVpQeUxHUUJHUllEWTI5dE1SY3dGUVlLQ1pJbWlaUHlMR1FCR1JZSGFHRnlhV3R5WWpFbApNQ01HQTFVRUF4TWNhR0Z5YVd0eVlpMVhTVTR0TWtKUFZrRkZTMEkwTkVJdFEwRXRNakFlRncweU1EQTFNRFV3Ck56TTVORGxhRncweU1EQTFNRFl3TnpRNU5EaGFNRlV4RXpBUkJnb0praWFKay9Jc1pBRVpGZ05qYjIweEZ6QVYKQmdvSmtpYUprL0lzWkFFWkZnZG9ZWEpwYTNKaU1TVXdJd1lEVlFRREV4eG9ZWEpwYTNKaUxWZEpUaTB5UWs5VwpRVVZMUWpRMFFpMURRUzB5TUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUFqMHByCnhaaXpNaDBqYnRwN1ZOc0JrRVJ2MVpZT0MzMEtqaGRWdEExRm1MeFM2cXlycmpMZUdXOXRSd2ZnUkR0eVBodTIKZVJTcVpTUjF6Z1hZR0s0Nys3Y3F0YnB2UElOektCb0dOWERIVTNxVWlleXJWSjFDVzRKNjJodUdrbUV1VVVkMApKMXBxNTVxbjk1SmRUbWh1dmZlTUxxeHB5c01nbGVnY281ZFhoN0hsQkhwaTNKMFN4ZnhVWmxKMVZiOFJZVEZhCkJiMGFlTVZaRzRKeVREaktiMlR1TmFXOG1aUE5vOFBMRDRocjdndFNZUEQvQ1dVVGV5QlpoZC9LTzNPczlWVEIKYmpLUGtWd0J2WEs2SlFMSGprNFBHS3VYZDhaWVFyajBtOWNIZDNmcWNYTXlQUnQ2TlJ4ak0yMTUxckFzSkVhNgpWZC9ta056akpXalBrT2VZUVFJREFRQUJvMmt3WnpBVEJna3JCZ0VFQVlJM0ZBSUVCaDRFQUVNQVFUQU9CZ05WCkhROEJBZjhFQkFNQ0FZWXdEd1lEVlIwVEFRSC9CQVV3QXdFQi96QWRCZ05WSFE0RUZnUVVDVEc2ODJSay9kMysKWGtHa0VMakRFMjI4ZjNnd0VBWUpLd1lCQkFHQ054VUJCQU1DQVFBd0RRWUpLb1pJaHZjTkFRRUxCUUFEZ2dFQgpBR1RjTTNnWExIU05wS014RHEvUFpZbWZCMmNlN3VhMmxxbXpzZSt4QmthSTE0WXdzZE5ZQjZBVTNFWDM3QWpZCjd3bm9xQzY1N0U2RVhTODVDckoyNXJNTHo4OEtONGI3cUg5RUowSS9XVHg5YTdUT0ZENENWQThuL0xwNGh1Ym4KNlBFalY5NFlZWXBXTG1hTkkvbGFReWsxSHVJbDFSTCttVDFnSWQ4ZWZXZ1UvNmlVVEw3eGMrdjkyNHBuTHhISwpOSnNTV3c0NFk5a0R5SU9KOXFjWUlBN1lhTkxPZTRjSysvQlRvdDh0dVVKT1hHLzdBRmtxR2EyQVA4MmFZOStKCnkwSmU2OG5nTHJ1dVU4VHpneVpqdkFHcTRrVEVOdWFoaFdHVC9KWkEzOXhSNUV4MmNMUUplcE5NdnlZbUZ3Z1UKME8zYlA0OWNBVFVCMXoyQ3Y5aTRQbVk9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K"),
/// 				Fqdn:              pulumi.String("fullyqualified.domainname.com"),
/// 			},
/// 			VolumeName: pulumi.String("volume1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.netapp.CapacityPoolBucket;
/// import com.pulumi.azurenative.netapp.CapacityPoolBucketArgs;
/// import com.pulumi.azurenative.netapp.inputs.FileSystemUserArgs;
/// import com.pulumi.azurenative.netapp.inputs.NfsUserArgs;
/// import com.pulumi.azurenative.netapp.inputs.BucketServerPropertiesArgs;
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
///         var capacityPoolBucket = new CapacityPoolBucket("capacityPoolBucket", CapacityPoolBucketArgs.builder()
///             .accountName("account1")
///             .bucketName("bucket1")
///             .fileSystemUser(FileSystemUserArgs.builder()
///                 .nfsUser(NfsUserArgs.builder()
///                     .groupId(1000.0)
///                     .userId(1001.0)
///                     .build())
///                 .build())
///             .path("/path")
///             .poolName("pool1")
///             .resourceGroupName("myRG")
///             .server(BucketServerPropertiesArgs.builder()
///                 .certificateObject("LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURuVENDQW9XZ0F3SUJBZ0lRR3FXdnRxeHBvSTFJV3Z4VGdJbElWREFOQmdrcWhraUc5dzBCQVFzRkFEQlYKTVJNd0VRWUtDWkltaVpQeUxHUUJHUllEWTI5dE1SY3dGUVlLQ1pJbWlaUHlMR1FCR1JZSGFHRnlhV3R5WWpFbApNQ01HQTFVRUF4TWNhR0Z5YVd0eVlpMVhTVTR0TWtKUFZrRkZTMEkwTkVJdFEwRXRNakFlRncweU1EQTFNRFV3Ck56TTVORGxhRncweU1EQTFNRFl3TnpRNU5EaGFNRlV4RXpBUkJnb0praWFKay9Jc1pBRVpGZ05qYjIweEZ6QVYKQmdvSmtpYUprL0lzWkFFWkZnZG9ZWEpwYTNKaU1TVXdJd1lEVlFRREV4eG9ZWEpwYTNKaUxWZEpUaTB5UWs5VwpRVVZMUWpRMFFpMURRUzB5TUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUFqMHByCnhaaXpNaDBqYnRwN1ZOc0JrRVJ2MVpZT0MzMEtqaGRWdEExRm1MeFM2cXlycmpMZUdXOXRSd2ZnUkR0eVBodTIKZVJTcVpTUjF6Z1hZR0s0Nys3Y3F0YnB2UElOektCb0dOWERIVTNxVWlleXJWSjFDVzRKNjJodUdrbUV1VVVkMApKMXBxNTVxbjk1SmRUbWh1dmZlTUxxeHB5c01nbGVnY281ZFhoN0hsQkhwaTNKMFN4ZnhVWmxKMVZiOFJZVEZhCkJiMGFlTVZaRzRKeVREaktiMlR1TmFXOG1aUE5vOFBMRDRocjdndFNZUEQvQ1dVVGV5QlpoZC9LTzNPczlWVEIKYmpLUGtWd0J2WEs2SlFMSGprNFBHS3VYZDhaWVFyajBtOWNIZDNmcWNYTXlQUnQ2TlJ4ak0yMTUxckFzSkVhNgpWZC9ta056akpXalBrT2VZUVFJREFRQUJvMmt3WnpBVEJna3JCZ0VFQVlJM0ZBSUVCaDRFQUVNQVFUQU9CZ05WCkhROEJBZjhFQkFNQ0FZWXdEd1lEVlIwVEFRSC9CQVV3QXdFQi96QWRCZ05WSFE0RUZnUVVDVEc2ODJSay9kMysKWGtHa0VMakRFMjI4ZjNnd0VBWUpLd1lCQkFHQ054VUJCQU1DQVFBd0RRWUpLb1pJaHZjTkFRRUxCUUFEZ2dFQgpBR1RjTTNnWExIU05wS014RHEvUFpZbWZCMmNlN3VhMmxxbXpzZSt4QmthSTE0WXdzZE5ZQjZBVTNFWDM3QWpZCjd3bm9xQzY1N0U2RVhTODVDckoyNXJNTHo4OEtONGI3cUg5RUowSS9XVHg5YTdUT0ZENENWQThuL0xwNGh1Ym4KNlBFalY5NFlZWXBXTG1hTkkvbGFReWsxSHVJbDFSTCttVDFnSWQ4ZWZXZ1UvNmlVVEw3eGMrdjkyNHBuTHhISwpOSnNTV3c0NFk5a0R5SU9KOXFjWUlBN1lhTkxPZTRjSysvQlRvdDh0dVVKT1hHLzdBRmtxR2EyQVA4MmFZOStKCnkwSmU2OG5nTHJ1dVU4VHpneVpqdkFHcTRrVEVOdWFoaFdHVC9KWkEzOXhSNUV4MmNMUUplcE5NdnlZbUZ3Z1UKME8zYlA0OWNBVFVCMXoyQ3Y5aTRQbVk9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K")
///                 .fqdn("fullyqualified.domainname.com")
///                 .build())
///             .volumeName("volume1")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const capacityPoolBucket = new azure_native.netapp.CapacityPoolBucket("capacityPoolBucket", {
///     accountName: "account1",
///     bucketName: "bucket1",
///     fileSystemUser: {
///         nfsUser: {
///             groupId: 1000,
///             userId: 1001,
///         },
///     },
///     path: "/path",
///     poolName: "pool1",
///     resourceGroupName: "myRG",
///     server: {
///         certificateObject: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURuVENDQW9XZ0F3SUJBZ0lRR3FXdnRxeHBvSTFJV3Z4VGdJbElWREFOQmdrcWhraUc5dzBCQVFzRkFEQlYKTVJNd0VRWUtDWkltaVpQeUxHUUJHUllEWTI5dE1SY3dGUVlLQ1pJbWlaUHlMR1FCR1JZSGFHRnlhV3R5WWpFbApNQ01HQTFVRUF4TWNhR0Z5YVd0eVlpMVhTVTR0TWtKUFZrRkZTMEkwTkVJdFEwRXRNakFlRncweU1EQTFNRFV3Ck56TTVORGxhRncweU1EQTFNRFl3TnpRNU5EaGFNRlV4RXpBUkJnb0praWFKay9Jc1pBRVpGZ05qYjIweEZ6QVYKQmdvSmtpYUprL0lzWkFFWkZnZG9ZWEpwYTNKaU1TVXdJd1lEVlFRREV4eG9ZWEpwYTNKaUxWZEpUaTB5UWs5VwpRVVZMUWpRMFFpMURRUzB5TUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUFqMHByCnhaaXpNaDBqYnRwN1ZOc0JrRVJ2MVpZT0MzMEtqaGRWdEExRm1MeFM2cXlycmpMZUdXOXRSd2ZnUkR0eVBodTIKZVJTcVpTUjF6Z1hZR0s0Nys3Y3F0YnB2UElOektCb0dOWERIVTNxVWlleXJWSjFDVzRKNjJodUdrbUV1VVVkMApKMXBxNTVxbjk1SmRUbWh1dmZlTUxxeHB5c01nbGVnY281ZFhoN0hsQkhwaTNKMFN4ZnhVWmxKMVZiOFJZVEZhCkJiMGFlTVZaRzRKeVREaktiMlR1TmFXOG1aUE5vOFBMRDRocjdndFNZUEQvQ1dVVGV5QlpoZC9LTzNPczlWVEIKYmpLUGtWd0J2WEs2SlFMSGprNFBHS3VYZDhaWVFyajBtOWNIZDNmcWNYTXlQUnQ2TlJ4ak0yMTUxckFzSkVhNgpWZC9ta056akpXalBrT2VZUVFJREFRQUJvMmt3WnpBVEJna3JCZ0VFQVlJM0ZBSUVCaDRFQUVNQVFUQU9CZ05WCkhROEJBZjhFQkFNQ0FZWXdEd1lEVlIwVEFRSC9CQVV3QXdFQi96QWRCZ05WSFE0RUZnUVVDVEc2ODJSay9kMysKWGtHa0VMakRFMjI4ZjNnd0VBWUpLd1lCQkFHQ054VUJCQU1DQVFBd0RRWUpLb1pJaHZjTkFRRUxCUUFEZ2dFQgpBR1RjTTNnWExIU05wS014RHEvUFpZbWZCMmNlN3VhMmxxbXpzZSt4QmthSTE0WXdzZE5ZQjZBVTNFWDM3QWpZCjd3bm9xQzY1N0U2RVhTODVDckoyNXJNTHo4OEtONGI3cUg5RUowSS9XVHg5YTdUT0ZENENWQThuL0xwNGh1Ym4KNlBFalY5NFlZWXBXTG1hTkkvbGFReWsxSHVJbDFSTCttVDFnSWQ4ZWZXZ1UvNmlVVEw3eGMrdjkyNHBuTHhISwpOSnNTV3c0NFk5a0R5SU9KOXFjWUlBN1lhTkxPZTRjSysvQlRvdDh0dVVKT1hHLzdBRmtxR2EyQVA4MmFZOStKCnkwSmU2OG5nTHJ1dVU4VHpneVpqdkFHcTRrVEVOdWFoaFdHVC9KWkEzOXhSNUV4MmNMUUplcE5NdnlZbUZ3Z1UKME8zYlA0OWNBVFVCMXoyQ3Y5aTRQbVk9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
///         fqdn: "fullyqualified.domainname.com",
///     },
///     volumeName: "volume1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// capacity_pool_bucket = azure_native.netapp.CapacityPoolBucket("capacityPoolBucket",
///     account_name="account1",
///     bucket_name="bucket1",
///     file_system_user={
///         "nfs_user": {
///             "group_id": 1000,
///             "user_id": 1001,
///         },
///     },
///     path="/path",
///     pool_name="pool1",
///     resource_group_name="myRG",
///     server={
///         "certificate_object": "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURuVENDQW9XZ0F3SUJBZ0lRR3FXdnRxeHBvSTFJV3Z4VGdJbElWREFOQmdrcWhraUc5dzBCQVFzRkFEQlYKTVJNd0VRWUtDWkltaVpQeUxHUUJHUllEWTI5dE1SY3dGUVlLQ1pJbWlaUHlMR1FCR1JZSGFHRnlhV3R5WWpFbApNQ01HQTFVRUF4TWNhR0Z5YVd0eVlpMVhTVTR0TWtKUFZrRkZTMEkwTkVJdFEwRXRNakFlRncweU1EQTFNRFV3Ck56TTVORGxhRncweU1EQTFNRFl3TnpRNU5EaGFNRlV4RXpBUkJnb0praWFKay9Jc1pBRVpGZ05qYjIweEZ6QVYKQmdvSmtpYUprL0lzWkFFWkZnZG9ZWEpwYTNKaU1TVXdJd1lEVlFRREV4eG9ZWEpwYTNKaUxWZEpUaTB5UWs5VwpRVVZMUWpRMFFpMURRUzB5TUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUFqMHByCnhaaXpNaDBqYnRwN1ZOc0JrRVJ2MVpZT0MzMEtqaGRWdEExRm1MeFM2cXlycmpMZUdXOXRSd2ZnUkR0eVBodTIKZVJTcVpTUjF6Z1hZR0s0Nys3Y3F0YnB2UElOektCb0dOWERIVTNxVWlleXJWSjFDVzRKNjJodUdrbUV1VVVkMApKMXBxNTVxbjk1SmRUbWh1dmZlTUxxeHB5c01nbGVnY281ZFhoN0hsQkhwaTNKMFN4ZnhVWmxKMVZiOFJZVEZhCkJiMGFlTVZaRzRKeVREaktiMlR1TmFXOG1aUE5vOFBMRDRocjdndFNZUEQvQ1dVVGV5QlpoZC9LTzNPczlWVEIKYmpLUGtWd0J2WEs2SlFMSGprNFBHS3VYZDhaWVFyajBtOWNIZDNmcWNYTXlQUnQ2TlJ4ak0yMTUxckFzSkVhNgpWZC9ta056akpXalBrT2VZUVFJREFRQUJvMmt3WnpBVEJna3JCZ0VFQVlJM0ZBSUVCaDRFQUVNQVFUQU9CZ05WCkhROEJBZjhFQkFNQ0FZWXdEd1lEVlIwVEFRSC9CQVV3QXdFQi96QWRCZ05WSFE0RUZnUVVDVEc2ODJSay9kMysKWGtHa0VMakRFMjI4ZjNnd0VBWUpLd1lCQkFHQ054VUJCQU1DQVFBd0RRWUpLb1pJaHZjTkFRRUxCUUFEZ2dFQgpBR1RjTTNnWExIU05wS014RHEvUFpZbWZCMmNlN3VhMmxxbXpzZSt4QmthSTE0WXdzZE5ZQjZBVTNFWDM3QWpZCjd3bm9xQzY1N0U2RVhTODVDckoyNXJNTHo4OEtONGI3cUg5RUowSS9XVHg5YTdUT0ZENENWQThuL0xwNGh1Ym4KNlBFalY5NFlZWXBXTG1hTkkvbGFReWsxSHVJbDFSTCttVDFnSWQ4ZWZXZ1UvNmlVVEw3eGMrdjkyNHBuTHhISwpOSnNTV3c0NFk5a0R5SU9KOXFjWUlBN1lhTkxPZTRjSysvQlRvdDh0dVVKT1hHLzdBRmtxR2EyQVA4MmFZOStKCnkwSmU2OG5nTHJ1dVU4VHpneVpqdkFHcTRrVEVOdWFoaFdHVC9KWkEzOXhSNUV4MmNMUUplcE5NdnlZbUZ3Z1UKME8zYlA0OWNBVFVCMXoyQ3Y5aTRQbVk9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K",
///         "fqdn": "fullyqualified.domainname.com",
///     },
///     volume_name="volume1")
///
/// ```
///
/// ```yaml
/// resources:
///   capacityPoolBucket:
///     type: azure-native:netapp:CapacityPoolBucket
///     properties:
///       accountName: account1
///       bucketName: bucket1
///       fileSystemUser:
///         nfsUser:
///           groupId: 1000
///           userId: 1001
///       path: /path
///       poolName: pool1
///       resourceGroupName: myRG
///       server:
///         certificateObject: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSURuVENDQW9XZ0F3SUJBZ0lRR3FXdnRxeHBvSTFJV3Z4VGdJbElWREFOQmdrcWhraUc5dzBCQVFzRkFEQlYKTVJNd0VRWUtDWkltaVpQeUxHUUJHUllEWTI5dE1SY3dGUVlLQ1pJbWlaUHlMR1FCR1JZSGFHRnlhV3R5WWpFbApNQ01HQTFVRUF4TWNhR0Z5YVd0eVlpMVhTVTR0TWtKUFZrRkZTMEkwTkVJdFEwRXRNakFlRncweU1EQTFNRFV3Ck56TTVORGxhRncweU1EQTFNRFl3TnpRNU5EaGFNRlV4RXpBUkJnb0praWFKay9Jc1pBRVpGZ05qYjIweEZ6QVYKQmdvSmtpYUprL0lzWkFFWkZnZG9ZWEpwYTNKaU1TVXdJd1lEVlFRREV4eG9ZWEpwYTNKaUxWZEpUaTB5UWs5VwpRVVZMUWpRMFFpMURRUzB5TUlJQklqQU5CZ2txaGtpRzl3MEJBUUVGQUFPQ0FROEFNSUlCQ2dLQ0FRRUFqMHByCnhaaXpNaDBqYnRwN1ZOc0JrRVJ2MVpZT0MzMEtqaGRWdEExRm1MeFM2cXlycmpMZUdXOXRSd2ZnUkR0eVBodTIKZVJTcVpTUjF6Z1hZR0s0Nys3Y3F0YnB2UElOektCb0dOWERIVTNxVWlleXJWSjFDVzRKNjJodUdrbUV1VVVkMApKMXBxNTVxbjk1SmRUbWh1dmZlTUxxeHB5c01nbGVnY281ZFhoN0hsQkhwaTNKMFN4ZnhVWmxKMVZiOFJZVEZhCkJiMGFlTVZaRzRKeVREaktiMlR1TmFXOG1aUE5vOFBMRDRocjdndFNZUEQvQ1dVVGV5QlpoZC9LTzNPczlWVEIKYmpLUGtWd0J2WEs2SlFMSGprNFBHS3VYZDhaWVFyajBtOWNIZDNmcWNYTXlQUnQ2TlJ4ak0yMTUxckFzSkVhNgpWZC9ta056akpXalBrT2VZUVFJREFRQUJvMmt3WnpBVEJna3JCZ0VFQVlJM0ZBSUVCaDRFQUVNQVFUQU9CZ05WCkhROEJBZjhFQkFNQ0FZWXdEd1lEVlIwVEFRSC9CQVV3QXdFQi96QWRCZ05WSFE0RUZnUVVDVEc2ODJSay9kMysKWGtHa0VMakRFMjI4ZjNnd0VBWUpLd1lCQkFHQ054VUJCQU1DQVFBd0RRWUpLb1pJaHZjTkFRRUxCUUFEZ2dFQgpBR1RjTTNnWExIU05wS014RHEvUFpZbWZCMmNlN3VhMmxxbXpzZSt4QmthSTE0WXdzZE5ZQjZBVTNFWDM3QWpZCjd3bm9xQzY1N0U2RVhTODVDckoyNXJNTHo4OEtONGI3cUg5RUowSS9XVHg5YTdUT0ZENENWQThuL0xwNGh1Ym4KNlBFalY5NFlZWXBXTG1hTkkvbGFReWsxSHVJbDFSTCttVDFnSWQ4ZWZXZ1UvNmlVVEw3eGMrdjkyNHBuTHhISwpOSnNTV3c0NFk5a0R5SU9KOXFjWUlBN1lhTkxPZTRjSysvQlRvdDh0dVVKT1hHLzdBRmtxR2EyQVA4MmFZOStKCnkwSmU2OG5nTHJ1dVU4VHpneVpqdkFHcTRrVEVOdWFoaFdHVC9KWkEzOXhSNUV4MmNMUUplcE5NdnlZbUZ3Z1UKME8zYlA0OWNBVFVCMXoyQ3Y5aTRQbVk9Ci0tLS0tRU5EIENFUlRJRklDQVRFLS0tLS0K
///         fqdn: fullyqualified.domainname.com
///       volumeName: volume1
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:netapp:CapacityPoolBucket account1/pool1/volume1/bucket1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/netAppAccounts/{accountName}/capacityPools/{poolName}/volumes/{volumeName}/buckets/{bucketName}
/// ```
class CapacityPoolBucket extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// File System user having access to volume data. For Unix, this is the user's uid and gid. For Windows, this is the user's username. Note that the Unix and Windows user details are mutually exclusive, meaning one or other must be supplied, but not both.
  late final pulumi.Output<FileSystemUserResponse?> fileSystemUser;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The volume path mounted inside the bucket. The default is the root path '/' if no value is provided when the bucket is created.
  late final pulumi.Output<String?> path;
  /// Provisioning state of the resource
  late final pulumi.Output<String> provisioningState;
  /// Properties of the server managing the lifecycle of volume buckets
  late final pulumi.Output<BucketServerPropertiesResponse?> server;
  /// The bucket credentials status. There states:
  ///
  /// "NoCredentialsSet": Access and Secret key pair have not been generated.
  /// "CredentialsExpired": Access and Secret key pair have expired.
  /// "Active": The certificate has been installed and credentials are unexpired.
  late final pulumi.Output<String> status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CapacityPoolBucket].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityPoolBucket]. {@macro pulumi_netapp_capacity_pool_bucket_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityPoolBucket(
    String name, {
    CapacityPoolBucketArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:CapacityPoolBucket',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    fileSystemUser = registerOutput<FileSystemUserResponse?>('fileSystemUser', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSystemUserResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    path = registerOutput<String?>('path');
    provisioningState = registerOutput<String>('provisioningState');
    server = registerOutput<BucketServerPropertiesResponse?>('server', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BucketServerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
