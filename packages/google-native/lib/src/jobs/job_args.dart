// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_info.dart';
import 'compensation_info.dart';
import 'job_degree_types_item.dart';
import 'job_employment_types_item.dart';
import 'job_job_benefits_item.dart';
import 'job_job_level.dart';
import 'job_posting_region.dart';
import 'job_visibility.dart';
import 'processing_options.dart';

/// {@template pulumi_jobs_v3_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_jobs_v3_job_args_doc}
class JobArgs {
  /// Optional but strongly recommended for the best service experience. Location(s) where the employer is looking to hire for this job posting. Specifying the full street address(es) of the hiring location enables better API results, especially job searches by commute time. At most 50 locations are allowed for best search performance. If a job has more locations, it is suggested to split it into multiple jobs with unique requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', etc.) as multiple jobs with the same company_name, language_code and requisition_id are not allowed. If the original requisition_id must be preserved, a custom field should be used for storage. It is also suggested to group the locations that close to each other in the same job for better search experience. Jobs with multiple addresses must have their addresses with the same LocationType to allow location filtering to work properly. (For example, a Job with addresses "1600 Amphitheatre Parkway, Mountain View, CA, USA" and "London, UK" may not have location filters applied correctly at search time since the first is a LocationType.STREET_ADDRESS and the second is a LocationType.LOCALITY.) If a job needs to have multiple addresses, it is suggested to split it into multiple jobs with same LocationTypes. The maximum number of allowed characters is 500.
  final pulumi.Input<List<String>>? addresses;

  /// At least one field within ApplicationInfo must be specified. Job application information.
  final pulumi.Input<ApplicationInfo> applicationInfo;

  /// The resource name of the company listing the job, such as "projects/api-test-project/companies/foo".
  final pulumi.Input<String> companyName;

  /// Optional. Job compensation information.
  final pulumi.Input<CompensationInfo>? compensationInfo;

  /// Optional. A map of fields to hold both filterable and non-filterable custom job attributes that are not covered by the provided structured fields. The keys of the map are strings up to 64 bytes and must match the pattern: a-zA-Z*. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100 filterable and at most 100 unfilterable keys are supported. For filterable `string_values`, across all keys at most 200 values are allowed, with each string no more than 255 characters. For unfilterable `string_values`, the maximum total size of `string_values` across all keys is 50KB.
  final pulumi.Input<Map<String, String>>? customAttributes;

  /// Optional. The desired education degrees for the job, such as Bachelors, Masters.
  final pulumi.Input<List<JobDegreeTypesItem>>? degreeTypes;

  /// Optional. The department or functional area within the company with the open position. The maximum number of allowed characters is 255.
  final pulumi.Input<String>? department;

  /// The description of the job, which typically includes a multi-paragraph description of the company and related information. Separate fields are provided on the job object for responsibilities, qualifications, and other job characteristics. Use of these separate job fields is recommended. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 100,000.
  final pulumi.Input<String> description;

  /// Optional. The employment type(s) of a job, for example, full time or part time.
  final pulumi.Input<List<JobEmploymentTypesItem>>? employmentTypes;

  /// Optional. A description of bonus, commission, and other compensation incentives associated with the job not including salary or pay. The maximum number of allowed characters is 10,000.
  final pulumi.Input<String>? incentives;

  /// Optional. The benefits included with the job.
  final pulumi.Input<List<JobJobBenefitsItem>>? jobBenefits;

  /// Optional. The end timestamp of the job. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  final pulumi.Input<String>? jobEndTime;

  /// Optional. The experience level associated with the job, such as "Entry Level".
  final pulumi.Input<JobJobLevel>? jobLevel;

  /// Optional. The start timestamp of the job in UTC time zone. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  final pulumi.Input<String>? jobStartTime;

  /// Optional. The language of the posting. This field is distinct from any requirements for fluency that are associated with the job. Language codes must be in BCP-47 format, such as "en-US" or "sr-Latn". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){: class="external" target="_blank" }. If this field is unspecified and Job.description is present, detected language code based on Job.description is assigned, otherwise defaults to 'en_US'.
  final pulumi.Input<String>? languageCode;

  /// Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is "projects/{project_id}/jobs/{job_id}", for example, "projects/api-test-project/jobs/1234". Use of this field in job queries and API calls is preferred over the use of requisition_id since this value is unique.
  final pulumi.Input<String>? name;

  /// Optional but strongly recommended for the best service experience. The expiration timestamp of the job. After this timestamp, the job is marked as expired, and it no longer appears in search results. The expired job can't be deleted or listed by the DeleteJob and ListJobs APIs, but it can be retrieved with the GetJob API or updated with the UpdateJob API. An expired job can be updated and opened again by using a future expiration timestamp. Updating an expired job fails if there is another existing open job with same company_name, language_code and requisition_id. The expired jobs are retained in our system for 90 days. However, the overall expired job count cannot exceed 3 times the maximum of open jobs count over the past week, otherwise jobs with earlier expire time are cleaned first. Expired jobs are no longer accessible after they are cleaned out. Invalid timestamps are ignored, and treated as expire time not provided. Timestamp before the instant request is made is considered valid, the job will be treated as expired immediately. If this value is not provided at the time of job creation or is invalid, the job posting expires after 30 days from the job's creation time. For example, if the job was created on 2017/01/01 13:00AM UTC with an unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC. If this value is not provided on job update, it depends on the field masks set by UpdateJobRequest.update_mask. If the field masks include expiry_time, or the masks are empty meaning that every field is updated, the job posting expires after 30 days from the job's last update time. Otherwise the expiration date isn't updated.
  final pulumi.Input<String>? postingExpireTime;

  /// Optional. The timestamp this job posting was most recently published. The default value is the time the request arrives at the server. Invalid timestamps are ignored.
  final pulumi.Input<String>? postingPublishTime;

  /// Optional. The job PostingRegion (for example, state, country) throughout which the job is available. If this field is set, a LocationFilter in a search query within the job region finds this job posting if an exact location match isn't specified. If this field is set to PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same location level as this field is strongly recommended.
  final pulumi.Input<JobPostingRegion>? postingRegion;

  /// Optional. Options for job processing.
  final pulumi.Input<ProcessingOptions>? processingOptions;
  final pulumi.Input<String>? project;

  /// Optional. A promotion value of the job, as determined by the client. The value determines the sort order of the jobs returned when searching for jobs using the featured jobs search call, with higher promotional values being returned first and ties being resolved by relevance sort. Only the jobs with a promotionValue >0 are returned in a FEATURED_JOB_SEARCH. Default value is 0, and negative values are treated as 0.
  final pulumi.Input<int>? promotionValue;

  /// Optional. A description of the qualifications required to perform the job. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  final pulumi.Input<String>? qualifications;

  /// The requisition ID, also referred to as the posting ID, assigned by the client to identify a job. This field is intended to be used by clients for client identification and tracking of postings. A job is not allowed to be created if there is another job with the same [company_name], language_code and requisition_id. The maximum number of allowed characters is 255.
  final pulumi.Input<String> requisitionId;

  /// Optional. A description of job responsibilities. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  final pulumi.Input<String>? responsibilities;

  /// The title of the job, such as "Software Engineer" The maximum number of allowed characters is 500.
  final pulumi.Input<String> title;

  /// Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
  final pulumi.Input<JobVisibility>? visibility;

  /// Creates a new [JobArgs].
  /// [addresses] Optional but strongly recommended for the best service experience. Location(s) where the employer is looking to hire for this job posting. Specifying the full street address(es) of the hiring location enables better API results, especially job searches by commute time. At most 50 locations are allowed for best search performance. If a job has more locations, it is suggested to split it into multiple jobs with unique requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', etc.) as multiple jobs with the same company_name, language_code and requisition_id are not allowed. If the original requisition_id must be preserved, a custom field should be used for storage. It is also suggested to group the locations that close to each other in the same job for better search experience. Jobs with multiple addresses must have their addresses with the same LocationType to allow location filtering to work properly. (For example, a Job with addresses "1600 Amphitheatre Parkway, Mountain View, CA, USA" and "London, UK" may not have location filters applied correctly at search time since the first is a LocationType.STREET_ADDRESS and the second is a LocationType.LOCALITY.) If a job needs to have multiple addresses, it is suggested to split it into multiple jobs with same LocationTypes. The maximum number of allowed characters is 500.
  /// [applicationInfo] At least one field within ApplicationInfo must be specified. Job application information.
  /// [companyName] The resource name of the company listing the job, such as "projects/api-test-project/companies/foo".
  /// [compensationInfo] Optional. Job compensation information.
  /// [customAttributes] Optional. A map of fields to hold both filterable and non-filterable custom job attributes that are not covered by the provided structured fields. The keys of the map are strings up to 64 bytes and must match the pattern: a-zA-Z*. For example, key0LikeThis or KEY_1_LIKE_THIS. At most 100 filterable and at most 100 unfilterable keys are supported. For filterable `string_values`, across all keys at most 200 values are allowed, with each string no more than 255 characters. For unfilterable `string_values`, the maximum total size of `string_values` across all keys is 50KB.
  /// [degreeTypes] Optional. The desired education degrees for the job, such as Bachelors, Masters.
  /// [department] Optional. The department or functional area within the company with the open position. The maximum number of allowed characters is 255.
  /// [description] The description of the job, which typically includes a multi-paragraph description of the company and related information. Separate fields are provided on the job object for responsibilities, qualifications, and other job characteristics. Use of these separate job fields is recommended. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 100,000.
  /// [employmentTypes] Optional. The employment type(s) of a job, for example, full time or part time.
  /// [incentives] Optional. A description of bonus, commission, and other compensation incentives associated with the job not including salary or pay. The maximum number of allowed characters is 10,000.
  /// [jobBenefits] Optional. The benefits included with the job.
  /// [jobEndTime] Optional. The end timestamp of the job. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  /// [jobLevel] Optional. The experience level associated with the job, such as "Entry Level".
  /// [jobStartTime] Optional. The start timestamp of the job in UTC time zone. Typically this field is used for contracting engagements. Invalid timestamps are ignored.
  /// [languageCode] Optional. The language of the posting. This field is distinct from any requirements for fluency that are associated with the job. Language codes must be in BCP-47 format, such as "en-US" or "sr-Latn". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47){: class="external" target="_blank" }. If this field is unspecified and Job.description is present, detected language code based on Job.description is assigned, otherwise defaults to 'en_US'.
  /// [name] Required during job update. The resource name for the job. This is generated by the service when a job is created. The format is "projects/{project_id}/jobs/{job_id}", for example, "projects/api-test-project/jobs/1234". Use of this field in job queries and API calls is preferred over the use of requisition_id since this value is unique.
  /// [postingExpireTime] Optional but strongly recommended for the best service experience. The expiration timestamp of the job. After this timestamp, the job is marked as expired, and it no longer appears in search results. The expired job can't be deleted or listed by the DeleteJob and ListJobs APIs, but it can be retrieved with the GetJob API or updated with the UpdateJob API. An expired job can be updated and opened again by using a future expiration timestamp. Updating an expired job fails if there is another existing open job with same company_name, language_code and requisition_id. The expired jobs are retained in our system for 90 days. However, the overall expired job count cannot exceed 3 times the maximum of open jobs count over the past week, otherwise jobs with earlier expire time are cleaned first. Expired jobs are no longer accessible after they are cleaned out. Invalid timestamps are ignored, and treated as expire time not provided. Timestamp before the instant request is made is considered valid, the job will be treated as expired immediately. If this value is not provided at the time of job creation or is invalid, the job posting expires after 30 days from the job's creation time. For example, if the job was created on 2017/01/01 13:00AM UTC with an unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC. If this value is not provided on job update, it depends on the field masks set by UpdateJobRequest.update_mask. If the field masks include expiry_time, or the masks are empty meaning that every field is updated, the job posting expires after 30 days from the job's last update time. Otherwise the expiration date isn't updated.
  /// [postingPublishTime] Optional. The timestamp this job posting was most recently published. The default value is the time the request arrives at the server. Invalid timestamps are ignored.
  /// [postingRegion] Optional. The job PostingRegion (for example, state, country) throughout which the job is available. If this field is set, a LocationFilter in a search query within the job region finds this job posting if an exact location match isn't specified. If this field is set to PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA, setting job Job.addresses to the same location level as this field is strongly recommended.
  /// [processingOptions] Optional. Options for job processing.
  /// [project] Optional.
  /// [promotionValue] Optional. A promotion value of the job, as determined by the client. The value determines the sort order of the jobs returned when searching for jobs using the featured jobs search call, with higher promotional values being returned first and ties being resolved by relevance sort. Only the jobs with a promotionValue >0 are returned in a FEATURED_JOB_SEARCH. Default value is 0, and negative values are treated as 0.
  /// [qualifications] Optional. A description of the qualifications required to perform the job. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  /// [requisitionId] The requisition ID, also referred to as the posting ID, assigned by the client to identify a job. This field is intended to be used by clients for client identification and tracking of postings. A job is not allowed to be created if there is another job with the same [company_name], language_code and requisition_id. The maximum number of allowed characters is 255.
  /// [responsibilities] Optional. A description of job responsibilities. The use of this field is recommended as an alternative to using the more general description field. This field accepts and sanitizes HTML input, and also accepts bold, italic, ordered list, and unordered list markup tags. The maximum number of allowed characters is 10,000.
  /// [title] The title of the job, such as "Software Engineer" The maximum number of allowed characters is 500.
  /// [visibility] Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
  JobArgs({
    List<String>? addresses,
    required ApplicationInfo applicationInfo,
    required String companyName,
    CompensationInfo? compensationInfo,
    Map<String, String>? customAttributes,
    List<JobDegreeTypesItem>? degreeTypes,
    String? department,
    required String description,
    List<JobEmploymentTypesItem>? employmentTypes,
    String? incentives,
    List<JobJobBenefitsItem>? jobBenefits,
    String? jobEndTime,
    JobJobLevel? jobLevel,
    String? jobStartTime,
    String? languageCode,
    String? name,
    String? postingExpireTime,
    String? postingPublishTime,
    JobPostingRegion? postingRegion,
    ProcessingOptions? processingOptions,
    String? project,
    int? promotionValue,
    String? qualifications,
    required String requisitionId,
    String? responsibilities,
    required String title,
    JobVisibility? visibility,
  }) : addresses = pulumi.Input.asOptionalInput<List<String>>(addresses),
       applicationInfo = pulumi.Input.asInput<ApplicationInfo>(applicationInfo),
       companyName = pulumi.Input.asInput<String>(companyName),
       compensationInfo = pulumi.Input.asOptionalInput<CompensationInfo>(
         compensationInfo,
       ),
       customAttributes = pulumi.Input.asOptionalInput<Map<String, String>>(
         customAttributes,
       ),
       degreeTypes = pulumi.Input.asOptionalInput<List<JobDegreeTypesItem>>(
         degreeTypes,
       ),
       department = pulumi.Input.asOptionalInput<String>(department),
       description = pulumi.Input.asInput<String>(description),
       employmentTypes =
           pulumi.Input.asOptionalInput<List<JobEmploymentTypesItem>>(
             employmentTypes,
           ),
       incentives = pulumi.Input.asOptionalInput<String>(incentives),
       jobBenefits = pulumi.Input.asOptionalInput<List<JobJobBenefitsItem>>(
         jobBenefits,
       ),
       jobEndTime = pulumi.Input.asOptionalInput<String>(jobEndTime),
       jobLevel = pulumi.Input.asOptionalInput<JobJobLevel>(jobLevel),
       jobStartTime = pulumi.Input.asOptionalInput<String>(jobStartTime),
       languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
       name = pulumi.Input.asOptionalInput<String>(name),
       postingExpireTime = pulumi.Input.asOptionalInput<String>(
         postingExpireTime,
       ),
       postingPublishTime = pulumi.Input.asOptionalInput<String>(
         postingPublishTime,
       ),
       postingRegion = pulumi.Input.asOptionalInput<JobPostingRegion>(
         postingRegion,
       ),
       processingOptions = pulumi.Input.asOptionalInput<ProcessingOptions>(
         processingOptions,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       promotionValue = pulumi.Input.asOptionalInput<int>(promotionValue),
       qualifications = pulumi.Input.asOptionalInput<String>(qualifications),
       requisitionId = pulumi.Input.asInput<String>(requisitionId),
       responsibilities = pulumi.Input.asOptionalInput<String>(
         responsibilities,
       ),
       title = pulumi.Input.asInput<String>(title),
       visibility = pulumi.Input.asOptionalInput<JobVisibility>(visibility);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'applicationInfo':
          pulumi.Input.mapInputValue<ApplicationInfo, Map<String, dynamic>>(
            applicationInfo,
            (value) => value.toMap(),
          ),
      'companyName': companyName,
      'compensationInfo':
          ?pulumi.Input.mapOptionalInputValue<
            CompensationInfo,
            Map<String, dynamic>
          >(compensationInfo, (value) => value.toMap()),
      'customAttributes': ?customAttributes,
      'degreeTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<JobDegreeTypesItem>,
            List<String>
          >(
            degreeTypes,
            (value) => pulumi.Input.encodeList<JobDegreeTypesItem, String>(
              value,
              (value) => value.value,
            ),
          ),
      'department': ?department,
      'description': description,
      'employmentTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<JobEmploymentTypesItem>,
            List<String>
          >(
            employmentTypes,
            (value) => pulumi.Input.encodeList<JobEmploymentTypesItem, String>(
              value,
              (value) => value.value,
            ),
          ),
      'incentives': ?incentives,
      'jobBenefits':
          ?pulumi.Input.mapOptionalInputValue<
            List<JobJobBenefitsItem>,
            List<String>
          >(
            jobBenefits,
            (value) => pulumi.Input.encodeList<JobJobBenefitsItem, String>(
              value,
              (value) => value.value,
            ),
          ),
      'jobEndTime': ?jobEndTime,
      'jobLevel': ?pulumi.Input.mapOptionalInputValue<JobJobLevel, String>(
        jobLevel,
        (value) => value.value,
      ),
      'jobStartTime': ?jobStartTime,
      'languageCode': ?languageCode,
      'name': ?name,
      'postingExpireTime': ?postingExpireTime,
      'postingPublishTime': ?postingPublishTime,
      'postingRegion':
          ?pulumi.Input.mapOptionalInputValue<JobPostingRegion, String>(
            postingRegion,
            (value) => value.value,
          ),
      'processingOptions':
          ?pulumi.Input.mapOptionalInputValue<
            ProcessingOptions,
            Map<String, dynamic>
          >(processingOptions, (value) => value.toMap()),
      'project': ?project,
      'promotionValue': ?promotionValue,
      'qualifications': ?qualifications,
      'requisitionId': requisitionId,
      'responsibilities': ?responsibilities,
      'title': title,
      'visibility': ?pulumi.Input.mapOptionalInputValue<JobVisibility, String>(
        visibility,
        (value) => value.value,
      ),
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      addresses: map['addresses'] == null
          ? null
          : (map['addresses'] as List).cast<String>(),
      applicationInfo: ApplicationInfo.fromMap(
        (map['applicationInfo'] as Map).cast<String, dynamic>(),
      ),
      companyName: map['companyName'] as String,
      compensationInfo: map['compensationInfo'] == null
          ? null
          : CompensationInfo.fromMap(
              (map['compensationInfo'] as Map).cast<String, dynamic>(),
            ),
      customAttributes: map['customAttributes'] == null
          ? null
          : (map['customAttributes'] as Map).cast<String, String>(),
      degreeTypes: map['degreeTypes'] == null
          ? null
          : pulumi.Input.decodeList<JobDegreeTypesItem>(
              map['degreeTypes'],
              (value) => JobDegreeTypesItem.fromValue(value as String),
            ),
      department: map['department'] == null
          ? null
          : map['department'] as String,
      description: map['description'] as String,
      employmentTypes: map['employmentTypes'] == null
          ? null
          : pulumi.Input.decodeList<JobEmploymentTypesItem>(
              map['employmentTypes'],
              (value) => JobEmploymentTypesItem.fromValue(value as String),
            ),
      incentives: map['incentives'] == null
          ? null
          : map['incentives'] as String,
      jobBenefits: map['jobBenefits'] == null
          ? null
          : pulumi.Input.decodeList<JobJobBenefitsItem>(
              map['jobBenefits'],
              (value) => JobJobBenefitsItem.fromValue(value as String),
            ),
      jobEndTime: map['jobEndTime'] == null
          ? null
          : map['jobEndTime'] as String,
      jobLevel: map['jobLevel'] == null
          ? null
          : JobJobLevel.fromValue(map['jobLevel'] as String),
      jobStartTime: map['jobStartTime'] == null
          ? null
          : map['jobStartTime'] as String,
      languageCode: map['languageCode'] == null
          ? null
          : map['languageCode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      postingExpireTime: map['postingExpireTime'] == null
          ? null
          : map['postingExpireTime'] as String,
      postingPublishTime: map['postingPublishTime'] == null
          ? null
          : map['postingPublishTime'] as String,
      postingRegion: map['postingRegion'] == null
          ? null
          : JobPostingRegion.fromValue(map['postingRegion'] as String),
      processingOptions: map['processingOptions'] == null
          ? null
          : ProcessingOptions.fromMap(
              (map['processingOptions'] as Map).cast<String, dynamic>(),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      promotionValue: map['promotionValue'] == null
          ? null
          : map['promotionValue'] as int,
      qualifications: map['qualifications'] == null
          ? null
          : map['qualifications'] as String,
      requisitionId: map['requisitionId'] as String,
      responsibilities: map['responsibilities'] == null
          ? null
          : map['responsibilities'] as String,
      title: map['title'] as String,
      visibility: map['visibility'] == null
          ? null
          : JobVisibility.fromValue(map['visibility'] as String),
    );
  }
}
